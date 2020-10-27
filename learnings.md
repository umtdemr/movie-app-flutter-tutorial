# Movie APP flutter

## Equatable

we need hashcode for == operator in class. We can extend equatable class for == operator

## Dartz

Error handling left and right :)

## get it

Dependenct injection

```dart
ApiClient apiClient = ApiClient(Client());
MovieRemoteDataSource dataSource = MovieRemoteDataSourceImpl(apiClient);
MovieRepository movieRepository = MovieRepositoryImpl(dataSource);
GetTrending getTrending = GetTrending(movieRepository);


// Yerine:

unawaited(getIt.init());
GetTrending getTrending = getIt.getItInstance<GetTrending>();


// di/get_it.dart

final getItInstance = GetIt.I;

Future init() async {
  getItInstance.registerLazySingleton<Client>(() => Client());
  getItInstance
      .registerLazySingleton<ApiClient>(() => ApiClient(getItInstance()));

  getItInstance.registerLazySingleton<MovieRemoteDataSource>(
      () => MovieRemoteDataSourceImpl(getItInstance()));

  getItInstance
      .registerLazySingleton<GetTrending>(() => GetTrending(getItInstance()));
  getItInstance.registerLazySingleton<GetPlayingNow>(
      () => GetPlayingNow(getItInstance()));
  getItInstance.registerLazySingleton<GetComingSoon>(
      () => GetComingSoon(getItInstance()));
  getItInstance
      .registerLazySingleton<GetPopular>(() => GetPopular(getItInstance()));
  getItInstance.registerLazySingleton<MovieRepository>(
      () => MovieRepositoryImpl(getItInstance()));
}

```


## Oriantation

```dart
WidgetsFlutterBinding.ensureInitialized();
  unawaited(
      SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]));
  unawaited(getIt.init());
```


## Screen util

Screen util githubdan ekledik daha sonra extensions ve constants olarak commonda belireldik


## Bloc

flutter_bloc ekledik daha sonra ise vs code da bloc eklentisini kullanarak presentation/blocs içersisinde sağ tık ile bloc oluşturduk