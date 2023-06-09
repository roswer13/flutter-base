import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:flutter_base/data/datasources/remote_data_source.dart';
import 'package:flutter_base/data/exception.dart';
import 'package:flutter_base/data/failure.dart';
import 'package:flutter_base/domain/entities/weather.dart';
import 'package:flutter_base/domain/repositories/weather_repository.dart';

class WeatherRepositoryImpl implements WeatherRepository {
  WeatherRepositoryImpl({required this.remoteDataSource});

  final RemoteDataSource remoteDataSource;

  @override
  Future<Either<Failure, Weather>> getCurrentWeather(String cityName) async {
    try {
      final result = await remoteDataSource.getCurrentWeather(cityName);
      return Right(result.toEntity());
    } on ServerException {
      return const Left(ServerFailure(''));
    } on SocketException {
      return const Left(ConnectionFailure('Failed to connect to the network'));
    }
  }
}
