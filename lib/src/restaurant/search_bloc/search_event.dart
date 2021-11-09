part of 'search_bloc.dart';

abstract class SearchEvent extends Equatable {
  const SearchEvent();

  @override
  List<Object?> get props => [];
}

class SearchForRestaurant extends SearchEvent {
  final String? name;

  const SearchForRestaurant({required this.name});

  @override
  List<Object?> get props => [name];
}
