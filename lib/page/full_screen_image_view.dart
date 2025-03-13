import 'dart:io';

import 'package:flutter/material.dart';
import 'package:path/path.dart' as path;
import 'package:permission_guard/permission_guard.dart';
import 'package:photo_view/photo_view.dart';

import '../main.dart';
import '../util/toast.dart';

class FullScreenImageView extends StatelessWidget {
  final String imagePath;

  const FullScreenImageView({super.key, required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          // 图片部分
          PhotoView(
            imageProvider: FileImage(File(imagePath)),
            minScale: PhotoViewComputedScale.contained,
            maxScale: PhotoViewComputedScale.covered * 2,
            initialScale: PhotoViewComputedScale.contained,
          ),

          // 关闭按钮
          Positioned(
            top: 40,
            left: 20,
            child: IconButton(
              icon: Icon(Icons.close, color: Colors.white),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ),

          // 下载按钮
          Positioned(
            bottom: 20,
            right: 20,
            child: IconButton(
              icon: const Icon(Icons.download, color: Colors.white),
              onPressed: () async {
                try {
                  if (await Permission.photos.request().isGranted ||
                      await Permission.storage.request().isGranted) {
                    var result = await _copyImage2PicturesPath(imagePath);
                    if (result.isNotEmpty) {
                      showSuccessToast("图片已保存到相册！");
                    } else {
                      showErrorToast("图片保存失败！");
                    }
                  } else {
                    showErrorToast("请授予访问相册的权限！");
                  }
                } catch (e) {
                  logger.e(e);
                  showErrorToast("图片保存失败！，${e.toString()}");
                }
              },
            ),
          ),
        ],
      ),
    );
  }

  Future<String> _copyImage2PicturesPath(String inputImagePath) async {
    try {
      if (Platform.isWindows) {
        // 获取用户目录
        final userProfile = Platform.environment['USERPROFILE'];
        if (userProfile == null) {
          throw Exception('无法获取用户目录');
        }
        // 构造系统图片目录的路径
        final picturesDir = path.join(userProfile, 'Pictures', '拷贝');
        final targetDir = Directory(picturesDir);
        // 确保目标目录存在
        if (!await targetDir.exists()) {
          await targetDir.create(recursive: true);
        }
        // 输入图片文件和目标路径
        final inputFile = File(inputImagePath);
        final newFilePath = path.join(
          targetDir.path,
          path.basename(inputImagePath),
        );
        // 复制图片
        await inputFile.copy(newFilePath);
        return newFilePath;
      }

      if (Platform.isAndroid) {
        // 检查存储权限
        if (await Permission.storage.request().isGranted) {
          // 创建Pictures目录的完整路径
          final picturesDir = '/storage/emulated/0/Pictures/拷贝';
          logger.d('Pictures directory: $picturesDir');

          // 确保Pictures目录存在
          final pictureDirectory = Directory(picturesDir);
          if (!await pictureDirectory.exists()) {
            await pictureDirectory.create(recursive: true);
          }

          // 输入图片文件和目标路径
          final inputFile = File(inputImagePath);
          final newFilePath = '$picturesDir/${inputFile.uri.pathSegments.last}';

          // 复制图片
          await inputFile.copy(newFilePath);

          return newFilePath;
        }
      }

      throw Exception('不支持的平台');
    } catch (e) {
      logger.e(e);
      rethrow;
    }
  }
}
