import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';

import '../models/search_enter_store.dart';

class SortWidget extends StatefulWidget {
  final SearchEnterStore searchEnterStore;
  final Function(int) onSortChanged;

  const SortWidget({
    super.key,
    required this.searchEnterStore,
    required this.onSortChanged,
  });

  @override
  State<SortWidget> createState() => _SortWidgetState();
}

class _SortWidgetState extends State<SortWidget> {
  SearchEnterStore get searchEnterStore => widget.searchEnterStore;

  late final List<String> sortList = ["人气 ↑", "人气 ↓", "时间 ↑", "时间 ↓"];
  late final Map<int, String> sortMap = {
    1: "人气 ↑",
    2: "人气 ↓",
    3: "时间 ↑",
    4: "时间 ↓",
  };
  late final Map<String, int> sortMap2 = {
    "人气 ↑": 1,
    "人气 ↓": 2,
    "时间 ↑": 3,
    "时间 ↓": 4,
  };

  late String selectedValue;

  @override
  void initState() {
    super.initState();
    selectedValue = sortMap[searchEnterStore.sortType]!;
  }

  @override
  Widget build(BuildContext context) {
    return DropdownButtonHideUnderline(
      child: DropdownButton2<String>(
        isExpanded: true,
        items:
            sortList
                .map(
                  (String item) =>
                      DropdownMenuItem<String>(value: item, child: Text(item)),
                )
                .toList(),
        value: selectedValue,
        onChanged: (String? value) {
          setState(() => selectedValue = value!);
          widget.onSortChanged(sortMap2[value!]!);
        },
        buttonStyleData: const ButtonStyleData(width: 100),
      ),
    );
  }
}
