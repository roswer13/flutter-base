import 'package:equatable/equatable.dart';
import 'package:flutter_base/domain/entities/weather.dart';

abstract class WeatherState extends Equatable {
  const WeatherState();

  @override
  List<Object?> get props => [];
}

class WeatherEmpty extends WeatherState {}

class WeatherLoading extends WeatherState {}

class WeatherError extends WeatherState {
  const WeatherError(this.message);

  final String message;

  @override
  List<Object?> get props => [message];
}

class WeatherHasData extends WeatherState {
  const WeatherHasData(this.result);
  final Weather result;

  @override
  List<Object?> get props => [result];
}
