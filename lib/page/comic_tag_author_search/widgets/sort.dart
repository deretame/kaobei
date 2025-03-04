import 'package:flutter/material.dart';

import '../../../network/http/http_require.dart';
import '../bloc/tag_author_search_bloc.dart';

class SortWidget extends StatefulWidget {
  final TagAuthorSearchEvent event;
  final ValueChanged<Ordering> onOrderingChanged;

  const SortWidget({
    super.key,
    required this.event,
    required this.onOrderingChanged,
  });

  @override
  State<SortWidget> createState() => _SortWidgetState();
}

class _SortWidgetState extends State<SortWidget> {
  TagAuthorSearchEvent get event => widget.event;

  ValueChanged<Ordering> get onOrderingChanged => widget.onOrderingChanged;

  late final List<Ordering> sortList = [
    Ordering.minusDatetimeUpdated,
    Ordering.datetimeUpdated,
    Ordering.minusPopular,
    Ordering.popular,
  ];
  late final Map<Ordering, String> sortMap = {
    Ordering.minusDatetimeUpdated: "更新时间 ↓",
    Ordering.datetimeUpdated: "更新时间 ↑",
    Ordering.minusPopular: "人气 ↓",
    Ordering.popular: "人气 ↑",
  };

  @override
  Widget build(BuildContext context) {
    return DropdownButton<Ordering>(
      value: event.ordering,
      icon: const Icon(Icons.expand_more),
      elevation: 16,
      underline: Container(height: 2),
      onChanged: (Ordering? value) {
        onOrderingChanged(value!);
      },
      items:
          sortList.map<DropdownMenuItem<Ordering>>((Ordering value) {
            return DropdownMenuItem<Ordering>(
              value: value,
              child: Text(sortMap[value]!),
            );
          }).toList(),
    );
  }
}
