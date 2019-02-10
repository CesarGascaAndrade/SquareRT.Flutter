import 'package:flutter/material.dart';
import 'package:square_rt/ViewModels/SquareRtViewModel.dart';
import 'package:square_rt/Views/MainView.dart';
import 'package:scoped_model/scoped_model.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return ScopedModel<SquareRtViewModel>(
      model: SquareRtViewModel(),
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.purple,
        ),
        home: MainView(),
      ),
    );
  }
}
