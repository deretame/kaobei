import 'package:equatable/equatable.dart';

enum PictureType { none, cover, comic }

class PictureInfo extends Equatable {
  final String url; // 网址
  final String cartoonId; // 漫画id
  final String chapterId; // 章节id
  final PictureType pictureType; // 图片类型

  const PictureInfo({
    this.url = '',
    this.cartoonId = '',
    this.chapterId = '',
    this.pictureType = PictureType.none,
  });

  @override
  List<Object> get props => [url, cartoonId, pictureType, chapterId];
}
