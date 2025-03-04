part of 'comic_read_bloc.dart';

enum ComicReadStatus { initial, success, failure }

class ComicReadState extends Equatable {
  final ComicReadStatus status;
  final ComicReadJson? eps;
  final String result;

  const ComicReadState({
    this.status = ComicReadStatus.initial,
    this.eps,
    this.result = '',
  });

  ComicReadState copyWith({
    ComicReadStatus? status,
    ComicReadJson? eps,
    String? result,
  }) {
    return ComicReadState(
      status: status ?? this.status,
      eps: eps ?? this.eps,
      result: result ?? this.result,
    );
  }

  @override
  List<Object?> get props => [status, eps, result];
}
