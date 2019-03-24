import 'package:flutter/material.dart';

class Start extends StatefulWidget{
  StatelessWidget loginViewWidget;

  Start(this.loginViewWidget);
  @override
  State<StatefulWidget> createState() => StartState(loginViewWidget);
}

class StartState extends State{
  StatelessWidget loginViewWidget;

  StartState(this.loginViewWidget);

  Widget build(BuildContext context){
    return Scaffold(
        body: Center(
          child: new ListView(
              shrinkWrap: true,
              padding: const EdgeInsets.all(20.0),
              children: [
                Center(child: new Column(
                  children: <Widget>[
                    new FlatButton(onPressed:  () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => loginViewWidget),
                      );
                    }, child: new Text('Войти')),
                    new FlatButton(onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => loginViewWidget),
                      );
                    }, child: new Text('Зарегистрироваться'))
                  ],
                ),)
              ]
          ),
        )
    );
  }
}