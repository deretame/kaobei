import 'package:animated_search_bar/animated_search_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:kaobei/page/search_result/search_result.dart';

import '../../../main.dart';
import '../../../network/http/http_require.dart';

class KaobeiSearchBar extends StatelessWidget implements PreferredSizeWidget {
  final SearchEnterStore searchEnterStore;

  const KaobeiSearchBar({super.key, required this.searchEnterStore});

  @override
  Widget build(BuildContext context) {
    TextEditingController controller = TextEditingController(
      text: searchEnterStore.keyword,
    );

    return Observer(
      builder:
          (context) => AppBar(
            titleSpacing: 0,
            elevation: 0,
            title: AnimatedSearchBar(
              label:
                  searchEnterStore.searchType == SearchType.comic
                      ? '搜索漫画'
                      : '搜索小说',
              controller: controller,
              labelStyle: TextStyle(
                color: setting.textColor,
                fontWeight: FontWeight.normal,
              ),
              searchStyle: TextStyle(color: setting.textColor),
              cursorColor: setting.textColor,
              searchDecoration: InputDecoration(
                labelText:
                    searchEnterStore.searchType == SearchType.comic
                        ? '搜索漫画'
                        : '搜索小说',
                alignLabelWithHint: true,
                contentPadding: EdgeInsets.symmetric(
                  vertical: 8,
                  horizontal: 8,
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
              ),
              textInputAction: TextInputAction.search,
              onFieldSubmitted: (value) {
                searchEnterStore.setKeyword(value);
                context.read<SearchResultBloc>().add(
                  SearchResultEvent(
                    SearchEnter(
                      keyword: value,
                      searchType: searchEnterStore.searchType,
                      qType: searchEnterStore.qType,
                      extend: searchEnterStore.extend,
                    ),
                    value == '' ? SearchStatus.none : SearchStatus.initial,
                  ),
                );
              },
            ),
          ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
