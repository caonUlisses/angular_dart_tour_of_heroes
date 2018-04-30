import 'package:angular/angular.dart';
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
  final String title = 'Tour of Heroes';
  List<Hero> heroes = mockHeroes;
  void onSelect(Hero hero) => selectedHero = hero;
}
