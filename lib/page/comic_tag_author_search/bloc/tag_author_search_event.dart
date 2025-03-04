part of 'tag_author_search_bloc.dart';

class TagAuthorSearchEvent extends Equatable {
  final TagAuthorSearchStatus status;
  final QType qType;
  final String keyword;
  final Ordering ordering;

  const TagAuthorSearchEvent({
    this.status = TagAuthorSearchStatus.initial,
    this.qType = QType.theme,
    this.keyword = "",
    this.ordering = Ordering.datetimeUpdated,
  });

  TagAuthorSearchEvent copyWith({
    TagAuthorSearchStatus? status,
    SearchType? searchType,
    QType? qType,
    String? keyword,
    Ordering? ordering,
  }) {
    return TagAuthorSearchEvent(
      status: status ?? this.status,
      qType: qType ?? this.qType,
      keyword: keyword ?? this.keyword,
      ordering: ordering ?? this.ordering,
    );
  }

  @override
  List<Object> get props => [status, qType, keyword, ordering];
}
