# 检查是否已安装 powershell-yaml 模块
if (-not (Get-Module -ListAvailable -Name powershell-yaml))
{
    Write-Host "powershell-yaml 模块未安装，正在安装..." -ForegroundColor Yellow

    # 安装 powershell-yaml 模块
    try
    {
        Install-Module -Name powershell-yaml -Scope CurrentUser -Force -ErrorAction Stop
        Write-Host "powershell-yaml 模块安装成功！" -ForegroundColor Green
    }
    catch
    {
        Write-Host "无法安装 powershell-yaml 模块: $_" -ForegroundColor Red
        exit 1
    }
}

# 导入 powershell-yaml 模块
Import-Module powershell-yaml -ErrorAction Stop

# 获取脚本所在目录
$scriptPath = $PSScriptRoot

# 项目根目录
$projectRoot = Join-Path $scriptPath "..\"

# 定义文件路径
$pubspecPath = Join-Path $projectRoot "pubspec.yaml"
$manifestPath = Join-Path $projectRoot "android\app\src\main\AndroidManifest.xml"
$releaseDir = Join-Path $projectRoot "build\app\outputs\apk\release"
$skiaDir = Join-Path $projectRoot "build\app\outputs\apk\skia"

# 从 pubspec.yaml 中提取版本号
function Get-VersionFromPubspec
{
    param (
        [string]$pubspecPath
    )
    try
    {
        $pubspecContent = Get-Content -Path $pubspecPath -Raw
        $parsedYaml = ConvertFrom-Yaml -Yaml $pubspecContent
        $version = $parsedYaml.version
        # 提取版本号中的版本号
        $version = $version -replace '\+.*', ''
        return $version
    }
    catch
    {
        Write-Host "无法解析 pubspec.yaml 文件: $_" -ForegroundColor Red
        exit 1
    }
}

# 获取版本号
$version = Get-VersionFromPubspec -pubspecPath $pubspecPath
$msixVersion = "$version.0"  # 格式化为 msix_version 所需的格式
Write-Host "提取的版本号: $version" -ForegroundColor Cyan
Write-Host "生成的 msix_version: $msixVersion" -ForegroundColor Cyan

try
{
    Set-Location $projectRoot

    # 0. 验证文件存在性
    if (-not (Test-Path $manifestPath))
    {
        throw "无法找到 AndroidManifest.xml：$manifestPath"
    }

    # 1. 备份原始文件
    $backupFile = "$manifestPath.bak"
    Copy-Item -Path $manifestPath -Destination $backupFile -Force
    Write-Host "已创建备份文件：$backupFile"

    # 2. 第一次构建：使用 Skia
    Write-Host "第一次构建：使用 Skia" -ForegroundColor Cyan
    flutter build apk --split-per-abi --dart-define=use_skia=true

    # 3. 复制第一次构建的文件到 skia 目录
    if (Test-Path $releaseDir)
    {
        if (-not (Test-Path $skiaDir))
        {
            New-Item -ItemType Directory -Path $skiaDir | Out-Null
        }
        Copy-Item -Path "$releaseDir\*" -Destination $skiaDir -Recurse -Force
        Write-Host "已将第一次构建的文件复制到 $skiaDir"
    }
    else
    {
        Write-Warning "未找到第一次构建的输出目录：$releaseDir"
    }

    # 4. 修改配置
    $content = Get-Content $manifestPath -Raw
    $modified = $content -replace '(android:name="io\.flutter\.embedding\.android\.EnableImpeller"\s+android:value=")false(")', '$1true$2'

    if ($content -ne $modified)
    {
        $modified | Set-Content $manifestPath
        Write-Host "已启用 Impeller 渲染引擎"
    }
    else
    {
        Write-Warning "未找到需要修改的配置项"
    }

    # 5. 第二次构建：不使用 Skia
    Write-Host "第二次构建：不使用 Skia" -ForegroundColor Cyan
    flutter build apk --split-per-abi
    Write-Host "第二次构建完成" -ForegroundColor Green
}
catch
{
    Write-Host "发生错误：$_" -ForegroundColor Red
    exit 1
}
finally
{
    # 6. 恢复原始文件
    if (Test-Path $backupFile)
    {
        Move-Item -Path $backupFile -Destination $manifestPath -Force
        Write-Host "已恢复原始配置文件"
    }
}

# 构建 Windows 发布版本
Write-Host "开始构建 Windows 发布版本" -ForegroundColor Cyan

# 更新 msix_config 中的 msix_version
$msixConfigPath = Join-Path $projectRoot "pubspec.yaml"
$msixConfigContent = Get-Content -Path $msixConfigPath -Raw
$msixConfigContent = $msixConfigContent -replace '(msix_version:\s*)[\d\.]+', "`$1$msixVersion"
$msixConfigContent | Set-Content -Path $msixConfigPath
Write-Host "已将 msix_version 更新为: $msixVersion" -ForegroundColor Green

# 执行 msix 构建
dart run msix:create
Write-Host "`n"
Write-Host "构建 Windows 发布版本完成" -ForegroundColor Green

Write-Host "构建流程完成" -ForegroundColor Green