part of 'home_bloc.dart';

@immutable
sealed class HomeEvent {}


class CarouselIndexChanged extends HomeEvent {
  final int newIndex;

  CarouselIndexChanged(this.newIndex);
}