import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:movieapp/domain/entities/no_params.dart';
import 'package:movieapp/domain/usecases/get_trending.dart';

import 'domain/entities/app_error.dart';
import 'domain/entities/movie_entity.dart';
import 'package:pedantic/pedantic.dart';
import 'di/get_it.dart' as getIt;

Future<void> main() async {
  unawaited(getIt.init());
  // ApiClient apiClient = ApiClient(Client());
  // MovieRemoteDataSource dataSource = MovieRemoteDataSourceImpl(apiClient);
  // MovieRepository movieRepository = MovieRepositoryImpl(dataSource);
  // GetTrending getTrending = GetTrending(movieRepository);
  GetTrending getTrending = getIt.getItInstance<GetTrending>();
  final Either<AppError, List<MovieEntity>> eitherResponse =
      await getTrending(NoParams());
  eitherResponse.fold(
    (l) {
      print('error');
      print(l);
    },
    (r) {
      print("List of movies");
      print(r);
    },
  );
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Container(),
    );
  }
}
