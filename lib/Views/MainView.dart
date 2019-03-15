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
            child: ListView(
              children: [
                Center(
                  child: SizedBox(
                    width: 300,
                    child: Column(
                      children: <Widget>[
                        Text(
                          model.result.toString(),
                          style: TextStyle(
                            fontSize: 30,
                          ),
                        ),
                        Stack(
                          //mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Image.asset('assets/squareRoot.jpg'),
                            Positioned(
                              top: 30,
                              left: 0,
                              width: 400,
                              child: FractionallySizedBox(
                                widthFactor: 0.65,
                                child: TextField(
                                  keyboardType: TextInputType.number,
                                  decoration: InputDecoration(
                                    labelText: 'Your Number',
                                    filled: true,
                                    //fillColor: Colors.white,
                                  ),
                                  onChanged: (value) {
                                    if(value == '') {
                                      value = '0';
                                    }
                                    model.calculate(double.parse(value));
                                  },
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
