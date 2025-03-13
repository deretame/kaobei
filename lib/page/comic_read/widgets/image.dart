import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kaobei/main.dart';
import 'package:window_manager/window_manager.dart';

import '../../../widgets/picture_bloc/bloc/picture_bloc.dart';
import '../../../widgets/picture_bloc/models/picture_info.dart';
import '../../full_screen_image_view.dart';

class ImageWidget extends StatefulWidget {
  final String url;
  final String cartoonId;
  final String chapterId;
  final int index;
  final bool isColumn;

  const ImageWidget({
    super.key,
    required this.url,
    required this.cartoonId,
    required this.chapterId,
    required this.index,
    required this.isColumn,
  });

  @override
  State<ImageWidget> createState() => _ImageWidgetState();
}

class _ImageWidgetState extends State<ImageWidget>
    with AutomaticKeepAliveClientMixin {
  String get url => widget.url;

  String get cartoonId => widget.cartoonId;

  String get chapterId => widget.chapterId;

  int get index => widget.index;

  double get screenWidth => setting.screenWidth;

  double get screenHeight => setting.screenHeight;

  @override
  bool get wantKeepAlive => true;

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return BlocProvider(
      create:
          (context) =>
              PictureBloc()..add(
                GetPicture(
                  PictureInfo(
                    url: url,
                    cartoonId: cartoonId,
                    pictureType: PictureType.comic,
                    chapterId: chapterId,
                  ),
                ),
              ),
      child: BlocBuilder<PictureBloc, PictureLoadState>(
        builder: (context, state) {
          switch (state.status) {
            case PictureLoadStatus.initial:
              return Container(
                color: widget.isColumn ? Color(0xFF2D2D2D) : Colors.black,
                width: screenWidth,
                height: screenWidth,
                child: Center(
                  child: RichText(
                    text: TextSpan(
                      text: index.toString(),
                      style: TextStyle(color: Color(0xFFCCCCCC), fontSize: 150),
                    ),
                  ),
                ),
              );
            case PictureLoadStatus.success:
              return GestureDetector(
                onLongPress: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder:
                          (context) =>
                              FullScreenImageView(imagePath: state.imagePath!),
                    ),
                  );
                },
                child: ImageDisplay(
                  imagePath: state.imagePath!,
                  isColumn: widget.isColumn,
                ),
              );
            case PictureLoadStatus.failure:
              if (state.result.toString().contains('404')) {
                return Container(
                  color: widget.isColumn ? Color(0xFF2D2D2D) : Colors.black,
                  width: screenWidth,
                  height: screenWidth,
                  child: Center(
                    child: Icon(Icons.error, color: Color(0xFFCCCCCC)),
                  ),
                );
              } else {
                return Container(
                  color: widget.isColumn ? Color(0xFF2D2D2D) : Colors.black,
                  width: screenWidth,
                  height: screenWidth,
                  child: InkWell(
                    onTap: () {
                      context.read<PictureBloc>().add(
                        GetPicture(
                          PictureInfo(
                            url: url,
                            cartoonId: cartoonId,
                            pictureType: PictureType.comic,
                            chapterId: chapterId,
                          ),
                        ),
                      );
                    },
                    child: Center(
                      child: Icon(Icons.refresh, color: Color(0xFFCCCCCC)),
                    ),
                  ),
                );
              }
          }
        },
      ),
    );
  }
}

class ImageDisplay extends StatefulWidget {
  final String imagePath;
  final bool isColumn;

  const ImageDisplay({
    super.key,
    required this.imagePath,
    required this.isColumn,
  });

  @override
  State<ImageDisplay> createState() => _ImageDisplayState();
}

class _ImageDisplayState extends State<ImageDisplay>
    with WidgetsBindingObserver, WindowListener {
  double get screenWidth => setting.screenWidth;

  double get screenHeight => setting.screenHeight;
  double imageWidth = 0;
  double imageHeight = 0;
  double widgetWidth = 0;
  double widgetHeight = 0;

  bool initial = false;

  @override
  void initState() {
    super.initState();
    _getImageResolution(widget.imagePath);
    imageWidth = screenWidth;
    imageHeight = screenWidth / 0.7;
    widgetHeight = imageHeight;
    widgetWidth = screenWidth;
    WidgetsBinding.instance.addObserver(this);
    windowManager.addListener(this);
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    windowManager.removeListener(this);
    super.dispose();
  }

  @override
  void didChangeMetrics() {
    super.didChangeMetrics();
    Future.delayed(Duration(milliseconds: 100)).then((value) {
      if (mounted) {
        setState(() {
          widgetWidth = MediaQuery.of(context).size.width;
          widgetHeight = imageHeight * (screenWidth / imageWidth);
        });
      }
    });
  }

  @override
  void onWindowMaximize() {
    Future.delayed(Duration(milliseconds: 100)).then((value) {
      if (mounted) {
        setState(() {
          widgetWidth = MediaQuery.of(context).size.width;
          widgetHeight = imageHeight * (screenWidth / imageWidth);
        });
      }
    });
  }

  @override
  void onWindowUnmaximize() {
    Future.delayed(Duration(milliseconds: 100)).then((value) {
      if (mounted) {
        setState(() {
          widgetWidth = MediaQuery.of(context).size.width;
          widgetHeight = imageHeight * (screenWidth / imageWidth);
        });
      }
    });
  }

  void _getImageResolution(String imagePath) {
    if (!widget.isColumn) {
      return;
    }

    final Image image = Image.file(File(imagePath));

    // 监听图片解析完成
    image.image
        .resolve(ImageConfiguration())
        .addListener(
          ImageStreamListener((ImageInfo imageInfo, _) {
            WidgetsBinding.instance.addPostFrameCallback((_) {
              if (mounted) {
                setState(() {
                  imageWidth = imageInfo.image.width.toDouble();
                  imageHeight = imageInfo.image.height.toDouble();
                  widgetWidth = MediaQuery.of(context).size.width;
                  widgetHeight = imageHeight * (screenWidth / imageWidth);
                });
              }
            });
          }),
        );
  }

  @override
  Widget build(BuildContext context) {
    if (!widget.isColumn) {
      return Image.file(File(widget.imagePath), fit: BoxFit.contain);
    }

    return Container(
      color: Colors.black,
      width: widgetWidth,
      height: widgetHeight,
      child: Image.file(File(widget.imagePath), fit: BoxFit.fill),
    );
  }
}
