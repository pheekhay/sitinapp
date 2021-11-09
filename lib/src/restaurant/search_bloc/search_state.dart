part of 'search_bloc.dart';

abstract class SearchState extends Equatable {
  const SearchState();

  @override
  List<Object> get props => [];
}

class SearchInitial extends SearchState {}

class SearchLoading extends SearchState {}

class SearchLoaded extends SearchState {
  final List<Restaurant> restaurants;

  const SearchLoaded(this.restaurants);

  @override
  List<Object> get props => [restaurants];
}

class SearchError extends SearchState {}
