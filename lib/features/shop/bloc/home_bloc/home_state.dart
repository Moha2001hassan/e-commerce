part of 'home_bloc.dart';

@immutable
sealed class HomeState {}

final class HomeInitial extends HomeState {}

// Carousel & Indicator
class CarouselState extends HomeState {
  final int currentIndex;

  CarouselState({required this.currentIndex});
}
