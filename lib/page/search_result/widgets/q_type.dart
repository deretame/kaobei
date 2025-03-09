import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../network/http/http_require.dart';
import '../bloc/search_result_bloc.dart';
import '../mobx/search_enter_store.dart';
import '../models/search_enter.dart';

class SortWidget extends StatefulWidget {
  final SearchEnterStore searchEnterStore;

  const SortWidget({super.key, required this.searchEnterStore});

  @override
  State<SortWidget> createState() => _SortWidgetState();
}

class _SortWidgetState extends State<SortWidget> {
  SearchEnterStore get searchEnterStore => widget.searchEnterStore;

  late final List<QType> sortList = [
    QType.none,
    QType.name,
    QType.author,
    QType.local,
  ];
  late final Map<QType, String> sortMap = {
    QType.none: "全部",
    QType.name: "名称",
    QType.author: "作者",
    QType.local: "汉化组",
  };

  @override
  Widget build(BuildContext context) {
    return DropdownButton<QType>(
      value: searchEnterStore.qType,
      icon: const Icon(Icons.expand_more),
      elevation: 16,
      underline: Container(height: 2),
      onChanged: (QType? value) {
        setState(() {
          searchEnterStore.qType = value!;
          searchEnterStore.setQType(value);
        });
        context.read<SearchResultBloc>().add(
          SearchResultEvent(
            SearchEnter(
              keyword: searchEnterStore.keyword,
              searchType: searchEnterStore.searchType,
              qType: value!,
              extend: searchEnterStore.extend,
            ),
            SearchStatus.initial,
          ),
        );
      },
      items:
          sortList.map<DropdownMenuItem<QType>>((QType value) {
            return DropdownMenuItem<QType>(
              value: value,
              child: Text(sortMap[value]!),
            );
          }).toList(),
    );
  }
}
