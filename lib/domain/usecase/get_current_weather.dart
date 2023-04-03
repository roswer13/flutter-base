import 'package:dartz/dartz.dart';

import 'package:flutter_base/data/failure.dart';
import 'package:flutter_base/domain/entities/weather.dart';
import 'package:flutter_base/domain/repositories/weather_repository.dart';

class GetCurrentWeather {
  GetCurrentWeather(this.repository);

  final WeatherRepository repository;

  Future<Either<Failure, Weather>> execute(String cityName) {
    return repository.getCurrentWeather(cityName);
  }
}
