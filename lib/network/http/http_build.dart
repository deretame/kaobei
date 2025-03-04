import 'dart:async';

import 'package:dio/dio.dart';

import '../../main.dart';

Future<Map<String, dynamic>> httpBuild({
  String url = '',
  String method = 'GET',
  Map<String, dynamic> headers = const {},
  Map<String, dynamic> params = const {},
  Map<String, dynamic> body = const {},
  bool cache = false,
}) async {
  // 根据useCache决定是否添加缓存拦截器
  if (cache) {
    dio.interceptors.add(cacheInterceptor);
  } else {
    dio.interceptors.removeWhere((Interceptor i) => i == cacheInterceptor);
  }

  final data =
      body.isNotEmpty && (method == 'POST' || method == 'PUT') ? body : null;

  try {
    final response = await dio.request(
      url,
      data: data,
      options: Options(
        method: method,
        headers: headers,
        sendTimeout: const Duration(seconds: 10), // 连接超时时间
        receiveTimeout: const Duration(seconds: 10), // 接收超时时间
      ),
      queryParameters: params,
    );

    if (response.data['code'] != 200) {
      throw Exception(response.data['message']);
    }

    return response.data;
  } on DioException catch (error) {
    throw Exception(_handleDioError(error));
  } catch (error) {
    throw Exception(error);
  }
}

String _handleDioError(DioException error) {
  switch (error.type) {
    case DioExceptionType.connectionTimeout:
      return '连接服务器超时（${error.requestOptions.connectTimeout}秒）';
    case DioExceptionType.sendTimeout:
      return '请求发送超时（${error.requestOptions.sendTimeout}秒）';
    case DioExceptionType.receiveTimeout:
      return '响应接收超时（${error.requestOptions.receiveTimeout}秒）';
    case DioExceptionType.badResponse:
      return error.response?.data?['message'] ??
          '服务器返回错误状态码: ${error.response?.statusCode}';
    case DioExceptionType.cancel:
      return '请求被取消';
    case DioExceptionType.connectionError:
      return '网络连接失败，请检查网络';
    case DioExceptionType.unknown:
      return error.error?.toString() ?? '未知网络错误';
    case DioExceptionType.badCertificate:
      return '证书验证失败';
  }
}
