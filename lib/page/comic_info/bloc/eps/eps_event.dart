part of 'eps_bloc.dart';

class EpsEvent extends Equatable {
  final EpsStatus status;
  final String comicId;
  final String group;

  const EpsEvent({
    required this.status,
    required this.comicId,
    required this.group,
  });

  @override
  List<Object> get props => [status, comicId, group];
}
