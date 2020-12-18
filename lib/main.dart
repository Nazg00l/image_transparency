import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  double _currentSlider1Value = 1.0;
  double _currentSlider2Value = 1.0;
  double _currentSlider3Value = 1.0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Column(
            children: <Widget>[
              Stack(
                alignment: Alignment.center,
                children: <Widget>[
                  Container(
                    //color: Colors.lightBlue,
                    width: 400,
                    height: 400,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        fit: BoxFit.fill,
                        image: NetworkImage(
                            'https://wonderfulengineering.com/wp-content/uploads/2014/05/HD-mobile-wallpapers-2.jpg'),
                        colorFilter: ColorFilter.mode(
                            Colors.black.withOpacity(_currentSlider1Value),
                            BlendMode.dstATop),
                      ),
                    ),
                  ),
                  Container(
                    //width: 300,
                    width: 400,
                    //height: 300,
                    height: 400,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(120),
                      image: DecorationImage(
                        fit: BoxFit.fill,
                        image: NetworkImage(
                            'https://wonderfulengineering.com/wp-content/uploads/2014/05/HD-mobile-wallpapers-3.jpg'),
                        colorFilter: ColorFilter.mode(
                            Colors.black.withOpacity(_currentSlider2Value),
                            BlendMode.dstATop),
                      ),
                    ),
                  ),
                  Container(
                    //width: 200,
                    width: 400,
                    //height: 200,
                    height: 400,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(400),
                      image: DecorationImage(
                        fit: BoxFit.fill,
                        image: NetworkImage(
                            'https://wonderfulengineering.com/wp-content/uploads/2014/05/mobile-wallpaper-2.jpg'),
                        colorFilter: ColorFilter.mode(
                            Colors.black.withOpacity(_currentSlider3Value),
                            BlendMode.dstATop),
                      ),
                    ),
                  ),
                ],
              ),
              Column(
                children: <Widget>[
                  Slider(
                    value: _currentSlider1Value,
                    max: 1.0,
                    min: 0.0,
                    label: _currentSlider1Value.round().toString(),
                    onChanged: (double value) {
                      setState(() {
                        _currentSlider1Value = value;
                      });
                    },
                    activeColor: Colors.blue[300],
                  ),
                  Text(_currentSlider1Value.toStringAsFixed(2)),
                  Slider(
                    value: _currentSlider2Value,
                    max: 1.0,
                    min: 0.0,
                    label: _currentSlider2Value.round().toString(),
                    onChanged: (double value) {
                      setState(() {
                        _currentSlider2Value = value;
                      });
                    },
                    activeColor: Colors.blue[300],
                  ),
                  Text(_currentSlider2Value.toStringAsFixed(2)),
                  Slider(
                    value: _currentSlider3Value,
                    max: 1.0,
                    min: 0.0,
                    label: _currentSlider3Value.round().toString(),
                    onChanged: (double value) {
                      setState(() {
                        _currentSlider3Value = value;
                      });
                    },
                    activeColor: Colors.blue[300],
                  ),
                  Text(_currentSlider3Value.toStringAsFixed(2)),
                ],
              ),
            ],
          ),
        ),

        //TODO: Next time add a slider to change the opacity of each picture
        //TODO: also try to add something to change the circular border radius
        //TODO: or add something to change the border shape itself.
      ),
    );
  }
}
