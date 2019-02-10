import 'package:flutter/material.dart';
import 'package:scoped_model/scoped_model.dart';
import 'package:square_rt/ViewModels/SquareRtViewModel.dart';

class MainView extends StatefulWidget {
  MainView({Key key}) : super(key: key);

  @override
  _MainViewState createState() => _MainViewState();
}

class _MainViewState extends State<MainView> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ScopedModelDescendant<SquareRtViewModel>(
      builder: (BuildContext context, Widget child, SquareRtViewModel model) {
        return Scaffold(
          appBar: AppBar(
            title: Text('SquareRT Calculator'),
          ),
          body: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  TextField(
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      labelText: 'Number',
                      filled: true,
                      fillColor: Colors.white,
                    ),
                    onChanged: (value) {
                      print('changed');
                      model.calculate(double.parse(value));
                    },
                  ),
                  Text(
                    model.result.toString(),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
