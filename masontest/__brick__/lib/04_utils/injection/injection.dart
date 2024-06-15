import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:{{project_name}}/04_utils/injection/injection.config.dart';

final getIt = GetIt.instance;

@InjectableInit()
Future<void> configureLocalDependancies() async => getIt.init();
