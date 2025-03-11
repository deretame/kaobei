package com.windy.kaobei

import android.app.Activity
import android.os.Bundle
import io.flutter.embedding.android.FlutterActivity

class MainActivity : FlutterActivity() {
    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        Thread.setDefaultUncaughtExceptionHandler { thread, throwable ->
            // 处理异常，例如记录日志或上报到服务器
            println("Uncaught exception: ${throwable.message}")
        }
    }
}
