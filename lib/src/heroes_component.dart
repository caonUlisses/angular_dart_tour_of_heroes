import 'package:angular/angular.dart';
import 'hero.dart';
import 'hero_detail_component.dart';
import 'hero_service.dart';

@Component(
  providers: const [HeroService],
  selector: 'my-heroes',
  templateUrl: 'heroes_component.html',
  styleUrls: const ['heroes_component.css'],
  directives: const [CORE_DIRECTIVES, HeroDetailComponent],
)
class HeroesComponent implements OnInit {
  void ngOnInit() => getHeroes();
  final HeroService _heroService;
  HeroesComponent(this._heroService);
  Hero selectedHero;
  List<Hero> heroes;
  Future<Null> getHeroes() async {
    heroes = await _heroService.getHeroes();
  }

  void onSelect(Hero hero) => selectedHero = hero;
}
