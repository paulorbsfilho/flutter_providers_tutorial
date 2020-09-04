import 'package:flutter/foundation.dart';
import 'package:flutter_providers/hero_model.dart';

class HeroesController extends ChangeNotifier{
  List<HeroModel> heroes =[
    HeroModel(name: 'Thor'),
    HeroModel(name: 'Homem aranha'),
    HeroModel(name: 'Batman', isFavorite: true),
    HeroModel(name: 'Superman', isFavorite: true),
    HeroModel(name: 'Aquaman'),
    HeroModel(name: 'Flash'),
    HeroModel(name: "Arqueiro verde"),
  ];

  checkfavorite(HeroModel model){
    model.isFavorite = !model.isFavorite;
    notifyListeners();
  }
}