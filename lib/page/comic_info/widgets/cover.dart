import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../config/config.dart';
import '../../../widgets/picture_bloc/bloc/picture_bloc.dart';
import '../../../widgets/picture_bloc/models/picture_info.dart';
import '../../full_screen_image_view.dart';

class CoverWidget extends StatelessWidget {
  final String url;
  final String cartoonId;

  const CoverWidget({super.key, required this.url, required this.cartoonId});

  @override
  Widget build(BuildContext context) {
    final width = screenWidth * 0.3;
    final height = (screenWidth * 0.3) / 0.7;
    return BlocProvider(
      create:
          (context) =>
              PictureBloc()..add(
                GetPicture(
                  PictureInfo(
                    url: url,
                    cartoonId: cartoonId,
                    pictureType: PictureType.cover,
                    chapterId: '',
                  ),
                ),
              ),
      child: SizedBox(
        width: width,
        height: height,
        child: BlocBuilder<PictureBloc, PictureLoadState>(
          builder: (context, state) {
            switch (state.status) {
              case PictureLoadStatus.initial:
                return Center(child: CircularProgressIndicator());
              case PictureLoadStatus.success:
                return GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder:
                            (context) => FullScreenImageView(
                              imagePath: state.imagePath!,
                            ),
                      ),
                    );
                  },
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(5.0),
                    child: Image.file(
                      File(state.imagePath!),
                      fit: BoxFit.cover,
                    ),
                  ),
                );

              case PictureLoadStatus.failure:
                if (state.result.toString().contains('404')) {
                  return Center(child: Icon(Icons.error));
                } else {
                  return InkWell(
                    onTap: () {
                      context.read<PictureBloc>().add(
                        GetPicture(
                          PictureInfo(
                            url: url,
                            cartoonId: cartoonId,
                            pictureType: PictureType.cover,
                            chapterId: '',
                          ),
                        ),
                      );
                    },
                    child: Center(child: Icon(Icons.refresh)),
                  );
                }
            }
          },
        ),
      ),
    );
  }
}
