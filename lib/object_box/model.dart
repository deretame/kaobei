import 'package:objectbox/objectbox.dart';

@Entity()
class CollectComic {
  @Id()
  int id;

  String pathWord;
  String coverUrl;
  String name;
  String alias;
  String region;
  String status;
  String author;
  List<String> theme;
  String description;
  int popular;
  @Property(type: PropertyType.date)
  DateTime lastUpdatedTime;
  bool deleted;
  @Property(type: PropertyType.date)
  DateTime deleteTime;
  @Property(type: PropertyType.date)
  DateTime lastViewingTime;
  @Property(type: PropertyType.date)
  DateTime collectTime;
  bool haveNewChapter;

  CollectComic({
    this.id = 0,
    required this.pathWord,
    required this.coverUrl,
    required this.name,
    required this.alias,
    required this.region,
    required this.status,
    required this.author,
    required this.theme,
    required this.description,
    required this.lastUpdatedTime,
    required this.deleted,
    required this.deleteTime,
    required this.lastViewingTime,
    required this.collectTime,
    required this.popular,
    required this.haveNewChapter,
  });

  // Convert a CollectComic object into a Map.
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'pathWord': pathWord,
      'coverUrl': coverUrl,
      'name': name,
      'alias': alias,
      'region': region,
      'status': status,
      'author': author,
      'theme': theme,
      'description': description,
      'popular': popular,
      'lastUpdatedTime': lastUpdatedTime.toIso8601String(),
      'datetimeUpdated': deleteTime.toIso8601String(),
      'lastViewingTime': lastViewingTime.toIso8601String(),
      'collectTime': collectTime.toIso8601String(),
      'deleted': deleted,
      'haveNewChapter': haveNewChapter,
    };
  }

  // Create a CollectComic object from a Map.
  factory CollectComic.fromJson(Map<String, dynamic> json) {
    return CollectComic(
      id: json['id'] ?? 0,
      pathWord: json['pathWord'],
      coverUrl: json['coverUrl'],
      name: json['name'],
      alias: json['alias'],
      region: json['region'],
      status: json['status'],
      author: json['author'],
      theme: List<String>.from(json['theme']),
      description: json['description'],
      popular: json['popular'],
      lastUpdatedTime: DateTime.parse(json['lastUpdatedTime']),
      deleteTime: DateTime.parse(json['datetimeUpdated']),
      lastViewingTime: DateTime.parse(json['lastViewingTime']),
      collectTime: DateTime.parse(json['collectTime']),
      deleted: json['deleted'],
      haveNewChapter: json['haveNewChapter'],
    );
  }

  @override
  String toString() {
    return 'CollectComic{id: $id, pathWord: $pathWord, coverUrl: $coverUrl, name: $name, alias: $alias, region: $region, status: $status, author: $author, theme: $theme, description: $description, popular: $popular, lastUpdatedTime: $lastUpdatedTime, datetimeUpdated: $deleteTime, lastViewingTime: $lastViewingTime, collectTime: $collectTime, deleted: $deleted, haveNewChapter: $haveNewChapter}';
  }
}

@Entity()
class ComicHistory {
  @Id()
  int id;

  String pathWord;
  String coverUrl;
  String name;
  String alias;
  String region;
  String status;
  String author;
  List<String> theme;
  String description;
  int popular;
  @Property(type: PropertyType.date)
  DateTime lastUpdatedTime;
  bool deleted;
  @Property(type: PropertyType.date)
  DateTime deleteTime;
  @Property(type: PropertyType.date)
  DateTime lastViewingTime;
  String chapterId;
  String chapterName;
  int chapterIndex;

  ComicHistory({
    this.id = 0,
    required this.pathWord,
    required this.coverUrl,
    required this.name,
    required this.alias,
    required this.region,
    required this.status,
    required this.author,
    required this.theme,
    required this.description,
    required this.popular,
    required this.lastUpdatedTime,
    required this.deleteTime,
    required this.lastViewingTime,
    required this.chapterId,
    required this.chapterName,
    required this.chapterIndex,
    required this.deleted,
  });

  // Convert a ComicHistory object into a Map.
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'pathWord': pathWord,
      'coverUrl': coverUrl,
      'name': name,
      'alias': alias,
      'region': region,
      'status': status,
      'author': author,
      'theme': theme,
      'description': description,
      'popular': popular,
      'datetimeUpdated': deleteTime.toIso8601String(),
      'lastUpdatedTime': lastUpdatedTime.toIso8601String(),
      'lastViewingTime': lastViewingTime.toIso8601String(),
      'chapterId': chapterId,
      'chapterName': chapterName,
      'chapterIndex': chapterIndex,
      'deleted': deleted,
    };
  }

  // Create a ComicHistory object from a Map.
  factory ComicHistory.fromJson(Map<String, dynamic> json) {
    return ComicHistory(
      id: json['id'] ?? 0,
      pathWord: json['pathWord'],
      coverUrl: json['coverUrl'],
      name: json['name'],
      alias: json['alias'],
      region: json['region'],
      status: json['status'],
      author: json['author'],
      theme: List<String>.from(json['theme']),
      description: json['description'],
      popular: json['popular'],
      lastUpdatedTime: DateTime.parse(json['lastUpdatedTime']),
      deleteTime: DateTime.parse(json['datetimeUpdated']),
      lastViewingTime: DateTime.parse(json['lastViewingTime']),
      chapterId: json['chapterId'],
      chapterName: json['chapterName'],
      chapterIndex: json['chapterIndex'],
      deleted: json['deleted'],
    );
  }

  @override
  String toString() {
    return 'ComicHistory{id: $id, pathWord: $pathWord, coverUrl: $coverUrl, name: $name, alias: $alias, region: $region, status: $status, author: $author, theme: $theme, description: $description, popular: $popular, lastUpdatedTime: $lastUpdatedTime, datetimeUpdated: $deleteTime, lastViewingTime: $lastViewingTime, chapterId: $chapterId, chapterName: $chapterName, chapterIndex: $chapterIndex, deleted: $deleted}';
  }
}

@Entity()
class ComicDownload {
  @Id()
  int id;

  String pathWord;
  String coverUrl;
  String name;
  String alias;
  String region;
  String status;
  String author;
  List<String> theme;
  String description;
  int popular;
  String comicBaseInfo;
  bool deleted;
  @Property(type: PropertyType.date)
  DateTime downloadTime;

  // 所有的信息，是一个json字符串
  String allInfo;

  ComicDownload({
    this.id = 0,
    required this.pathWord,
    required this.coverUrl,
    required this.name,
    required this.alias,
    required this.region,
    required this.status,
    required this.author,
    required this.theme,
    required this.description,
    required this.popular,
    required this.deleted,
    required this.downloadTime,
    required this.comicBaseInfo,
    required this.allInfo,
  });

  // Convert a ComicHistory object into a Map.
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'pathWord': pathWord,
      'coverUrl': coverUrl,
      'name': name,
      'alias': alias,
      'region': region,
      'status': status,
      'author': author,
      'theme': theme,
      'description': description,
      'popular': popular,
      'comicBaseInfo': comicBaseInfo,
      'allInfo': allInfo,
      'deleted': deleted,
      'downloadTime': downloadTime.toIso8601String(),
    };
  }

  // Create a ComicHistory object from a Map.
  factory ComicDownload.fromJson(Map<String, dynamic> json) {
    return ComicDownload(
      id: json['id'] ?? 0,
      pathWord: json['pathWord'],
      coverUrl: json['coverUrl'],
      name: json['name'],
      alias: json['alias'],
      region: json['region'],
      status: json['status'],
      author: json['author'],
      theme: List<String>.from(json['theme']),
      description: json['description'],
      popular: json['popular'],
      comicBaseInfo: json['comicBaseInfo'],
      allInfo: json['allInfo'],
      deleted: json['deleted'],
      downloadTime: DateTime.parse(json['downloadTime']),
    );
  }

  @override
  String toString() {
    return 'ComicHistory{id: $id, pathWord: $pathWord, coverUrl: $coverUrl, name: $name, alias: $alias, region: $region, status: $status, author: $author, theme: $theme, description: $description, popular: $popular, allInfo: $allInfo, downloadTime: $downloadTime,deleted: $deleted, comicBaseInfo: $comicBaseInfo}';
  }
}
