import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_providers/heroes_controller.dart';
import 'package:flutter_providers/home.dart';
import 'package:provider/provider.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers:[
        ChangeNotifierProvider<HeroesController>.value(value: HeroesController(),)
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter providers',
        theme: ThemeData(primarySwatch: Colors.blue),
        home: HomeWidget(),
      ),

    );
  }
}