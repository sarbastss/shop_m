import 'package:flutter/material.dart';

import 'view/home/MenuView.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp( 
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        fontFamily: 'Metropolis',
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
// onGenerateRoute: RouteGenerator.getRoute,
// initialRoute:Routes.splashRoute ,

home:MenuView(),
     
    );
  }
}
