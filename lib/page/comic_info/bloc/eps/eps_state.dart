part of 'eps_bloc.dart';

enum EpsStatus { initial, success, failure }

class EpsState extends Equatable {
  final EpsStatus status;
  final List<ListElement>? eps;
  final String result;

  const EpsState({this.status = EpsStatus.initial, this.eps, this.result = ''});

  EpsState copyWith({
    EpsStatus? status,
    List<ListElement>? eps,
    String? result,
  }) {
    return EpsState(
      status: status ?? this.status,
      eps: eps ?? this.eps,
      result: result ?? this.result,
    );
  }

  @override
  List<Object?> get props => [status, eps, result];
}
