import '../json/info/comic_info_json.dart';

enum ComicReadType { none, favorite, history, download, historyAndDownload }

class Group {
  final String pathWord;
  final int count;
  final String name;

  Group({required this.pathWord, required this.count, required this.name});

  factory Group.fromJson(Map<String, dynamic> json) {
    return Group(
      pathWord: json['path_word'],
      count: json['count'],
      name: json['name'],
    );
  }

  @override
  String toString() {
    return 'Group{pathWord: $pathWord, count: $count, name: $name}';
  }
}

List<Group> parseGroups(Map<String, dynamic> json) {
  return json.values.map((value) {
    return Group.fromJson(value);
  }).toList();
}

class ComicInfo {
  ComicInfoJson info;
  List<Group> groups;

  ComicInfo(this.info, this.groups);

  factory ComicInfo.fromJson(Map<String, dynamic> json) {
    return ComicInfo(
      ComicInfoJson.fromJson(json),
      parseGroups(json['results']['groups']),
    );
  }

  @override
  String toString() {
    return 'ComicInfo{info: ${info.toString()}, groups: ${groups.toString()}';
  }
}
