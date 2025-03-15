import 'http_build.dart';

enum SearchType { comic, books }

enum Ordering { datetimeUpdated, minusDatetimeUpdated, popular, minusPopular }

enum QType { none, name, author, local, theme }

const headers = {
  "user-agent": "COPY/2.2.6",
  "source": "copyApp",
  // "deviceinfo": "ALN-AL1-Allen",
  "webp": "1",
  "accept-encoding": "gzip",
  "authorization": "Token",
  "platform": "3",
  "referer": "com.copymanga.app-2.2.6",
  "accept": "application/json",
  "version": "2.2.6",
  "region": "1",
  // "device": "V417IR",
  "host": "api.mangacopy.com",
  // "umstring": "b4c89ca4104ea9a97750314d791520ac" // 魔法字符串
};

Future<Map<String, dynamic>> search({
  String q = "",
  int offset = 0,
  QType qType = QType.none,
  SearchType searchType = SearchType.comic,
}) async {
  var params = {
    "limit": 18,
    "offset": offset,
    "q_type": qType == QType.none ? "" : qType.name,
    "q": q,
    "platform": 3,
  };

  final url = "https://api.mangacopy.com/api/v3/search/${searchType.name}";

  return await httpBuild(
    url: url,
    method: "GET",
    headers: headers,
    params: params,
  );
}

Future<Map<String, dynamic>> getComicInfo(String comicId) async {
  final url = "https://api.mangacopy.com/api/v3/comic2/$comicId";

  var params = {"in_mainland": true, "platform": 3};

  return await httpBuild(
    url: url,
    method: "GET",
    headers: headers,
    params: params,
    cache: true,
  );
}

Future<Map<String, dynamic>> getComicEps({
  String comicId = '',
  String group = 'default',
  int offset = 0,
}) async {
  final url =
      "https://api.mangacopy.com/api/v3/comic/$comicId/group/$group/chapters";

  var params = {
    "limit": 100,
    "offset": offset,
    "in_mainland": true,
    "platform": 3,
  };

  return await httpBuild(
    url: url,
    method: "GET",
    headers: headers,
    params: params,
    cache: true,
  );
}

Future<Map<String, dynamic>> collectComic({
  String comicId = '',
  bool collected = true,
}) async {
  final url =
      "https://api.mangacopy.com/api/v3/member/collect/comic?platform=3";

  final headers = {
    'user-agent': 'COPY/2.2.5',
    'source': 'copyApp',
    // 'deviceinfo': 'ALN-AL1-Allen',
    'webp': '1',
    'accept-encoding': 'gzip',
    'authorization': 'Token 52828b397ead7e1d3724b5d63ce943928fe36142',
    'content-type': 'application/x-www-form-urlencoded;charset=utf-8',
    'platform': '3',
    'referer': 'com.copymanga.app-2.2.5',
    'accept': 'application/json',
    'version': '2.2.5',
    'region': '1',
    'content-length': '329',
    // 'device': 'V417IR',
    'host': 'api.mangacopy.com',
    // 'umstring': 'b4c89ca4104ea9a97750314d791520ac',
  };

  var params = {"platform": 3};

  final body = {
    'comic_id': comicId,
    'is_collect': collected ? 1 : 0, // 转换为整数类型
    'platform': 3,
    'authorization': 'Token',
    'version': '2.2.5',
    'source': 'copyApp',
    'region': 1,
    'webp': 1,
    'userAgent': 'COPY/2.2.5',
    'isGoogle': 'false', // 保持字符串类型
    'umString': 'b4c89ca4104ea9a97750314d791520ac',
    'androidId': 'V417IR',
    'referer': 'com.copymanga.app-2.2.5',
    'deviceInfo': 'ALN-AL1-Allen',
  };

  // 发送请求
  return await httpBuild(
    url: url,
    method: 'POST',
    headers: headers,
    params: params,
    body: body,
  );
}

Future<Map<String, dynamic>> getEpsInfo({
  String comicId = '',
  String chapterId = '',
}) async {
  final url =
      "https://api.mangacopy.com/api/v3/comic/$comicId/chapter2/$chapterId";

  var params = {"in_mainland": true, "platform": 3};

  return await httpBuild(
    url: url,
    method: "GET",
    headers: headers,
    params: params,
    cache: true,
  );
}

Future<Map<String, dynamic>> comicTagAuthorSearch({
  int offset = 0,
  QType qType = QType.theme,
  String keyword = "",
  Ordering ordering = Ordering.datetimeUpdated,
}) async {
  final url = "https://api.mangacopy.com/api/v3/comics";

  String orderingStr = "";
  switch (ordering) {
    case Ordering.datetimeUpdated:
      orderingStr = "datetime_updated";
      break;
    case Ordering.minusDatetimeUpdated:
      orderingStr = "-datetime_updated";
      break;
    case Ordering.popular:
      orderingStr = "popular";
      break;
    case Ordering.minusPopular:
      orderingStr = "-popular";
      break;
  }

  var params = {
    "limit": 21,
    "offset": offset,
    qType.toString().split('.').last: keyword,
    "ordering": orderingStr,
    "free_type": 1,
    "platform": 3,
  };

  return await httpBuild(
    url: url,
    method: "GET",
    headers: headers,
    params: params,
    cache: false,
  );
}

Future<Map<String, dynamic>> getChapterComments({
  String chapterId = '',
  int offset = 0,
}) async {
  final url = "https://api.mangacopy.com/api/v3/roasts";

  var params = {
    "chapter_id": chapterId,
    "limit": 10,
    "offset": offset,
    "platform": 3,
  };

  return await httpBuild(
    url: url,
    method: "GET",
    headers: headers,
    params: params,
    cache: false,
  );
}

Future<Map<String, dynamic>> getComicComments({
  String comicId = '',
  String replyId = '',
  int offset = 0,
}) async {
  final url = "https://api.mangacopy.com/api/v3/comments";

  var params = {
    "comic_id": comicId,
    "reply_id": replyId,
    "limit": 10,
    "offset": offset,
    "platform": 3,
  };

  return await httpBuild(
    url: url,
    method: "GET",
    headers: headers,
    params: params,
    cache: false,
  );
}
