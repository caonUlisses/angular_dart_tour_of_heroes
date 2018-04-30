import 'package:angular/angular.dart';
import 'package:angular_forms/angular_forms.dart';
import 'src/hero.dart';
import 'src/mock_heroes.dart';
import 'src/hero_detail_component.dart';

@Component(
  selector: 'app-component',
  templateUrl: 'app_component.html',
  styleUrls: const ['app_component.css'],
  directives: const [CORE_DIRECTIVES, HeroDetailComponent],
)
class AppComponent {
  Hero selectedHero;
  final Sting title = 'Tour of Heroes';
  List<Hero> heroes = mockHeroes;
  void onSelect(Hero hero) => selectedHero = hero;
}
