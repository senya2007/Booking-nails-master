import 'package:flutter/material.dart';

class LoginView extends StatelessWidget {
  // This widget is the root of your application.

  StatelessWidget _homePageWidget;

  LoginView(this._homePageWidget);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Войти',
        theme: ThemeData(
          // This is the theme of your application.
          //
          // Try running your application with "flutter run". You'll see the
          // application has a blue toolbar. Then, without quitting the app, try
          // changing the primarySwatch below to Colors.green and then invoke
          // "hot reload" (press "r" in the console where you ran "flutter run",
          // or simply save your changes to "hot reload" in a Flutter IDE).
          // Notice that the counter didn't reset back to zero; the application
          // is not restarted.
          primarySwatch: Colors.blue,
        ),
        home: Login(_homePageWidget)
    );
  }
}

class Login extends StatefulWidget{
  final StatelessWidget homePageWidget;

  Login(this.homePageWidget);

  @override
  State<StatefulWidget> createState() => LoginState(homePageWidget);
}

class LoginState extends State<StatefulWidget> {

  StatelessWidget homeWidget;

  LoginState(this.homeWidget);
  final _formKey = GlobalKey<FormState>();

  Widget build(BuildContext context) {
    return Scaffold
      (
        appBar: new AppBar(title: new Text('Авторизация')),
        body:
        Container(
            child: new Form(key: _formKey, child: new Stack(children:  <Widget>[
              new Container(
                padding: EdgeInsets.all(10.0),
                margin: const EdgeInsets.only(left: 20.0, right: 20.0),
                child: new Column(children: <Widget>[
                  new Row(children: [
                    Expanded(
                      flex: 2,
                      child:
                      new Text('Имя пользователя:', style: TextStyle(fontSize: 16.0),),
                    ),
                    Expanded(
                      flex: 3,
                      child:
                      new TextFormField(validator: (value) {
                        if (value.isEmpty) return 'Пожалуйста введите свое имя';
                      }),
                    ),
                  ]),
                  new Row(children: [
                    Expanded(
                      flex: 2,
                      child:
                      new Text('Пароль:', style: TextStyle(fontSize: 16.0),),
                    ),
                    Expanded(
                      flex: 3,
                      child:
                      new TextFormField(validator: (value) {
                        if (value.isEmpty) return 'Пожалуйста введите пароль';
                      }),
                    ),
                  ]),
                ],),
              ),



              new SizedBox(height: 50.0),

              new Positioned(child: new Align(
                alignment: FractionalOffset.bottomCenter,
                child: new SizedBox(
                  width: double.infinity,
                  height: 50,
                  child: new FlatButton(onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => homeWidget),
                    );
                  },
                    child: Text('Войти'),
                    color: Colors.blue,
                    textColor: Colors.white,),
                ),
              )),


            ],)))
    );}
}
