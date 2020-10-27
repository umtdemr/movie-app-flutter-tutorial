part of 'movie_carousel_bloc.dart';

abstract class MovieCarouselState extends Equatable {
  const MovieCarouselState();
  
  @override
  List<Object> get props => [];
}

class MovieCarouselInitial extends MovieCarouselState {}
