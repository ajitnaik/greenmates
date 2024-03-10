// lib/env/env.dart
import 'package:envied/envied.dart';

part 'env.g.dart';

@Envied()
abstract class Env {
  @EnviedField(varName: 'spoonacularApiKey')
  static const String spoonacularApiKey = _Env.spoonacularApiKey;
}
