import 'package:angular/angular.dart';
import 'hero.dart';
import 'mock_heroes.dart';
import 'dart:async';

@Injectable()
class HeroService {
  Future<List<Hero>> getHeroes() async => mockHeroes;
}
