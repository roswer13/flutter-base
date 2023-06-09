import 'package:dartz/dartz.dart';
import 'package:flutter_base/data/failure.dart';
import 'package:flutter_base/domain/entities/weather.dart';

abstract class WeatherRepository {
  Future<Either<Failure, Weather>> getCurrentWeather(String cityName);
}
