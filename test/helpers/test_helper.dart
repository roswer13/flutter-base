import 'package:flutter_base/data/datasources/remote_data_source.dart';
import 'package:flutter_base/domain/repositories/weather_repository.dart';
import 'package:mockito/annotations.dart';
import 'package:http/http.dart' as http;

@GenerateMocks([
  WeatherRepository,
  RemoteDataSource,
], customMocks: [
  MockSpec<http.Client>(as: #MockHttpClient)
])
void main() {}
