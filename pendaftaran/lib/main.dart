import 'package:flutter/material.dart';
import 'finish.dart';

void main() {
  runApp(MaterialApp(
    home: MyApp(),
    routes: <String, WidgetBuilder>{
      '/Finish': (BuildContext context) => new FinishBaru()
    },
  ));
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => new _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Form Registration"),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(16.0),
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                TextFormField(
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    hintText: "Email Address",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20.0)),
                  ),
                  validator: (a) {
                    if (a.isEmpty) {
                      return "Please fill your email address";
                    }
                  },
                ),
                Padding(padding: EdgeInsets.all(10.0)),
                TextFormField(
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                    hintText: "Full Name",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20.0)),
                  ),
                  validator: (a) {
                    if (a.isEmpty) {
                      return "Please fill your full name";
                    }
                  },
                ),
                Padding(padding: EdgeInsets.all(10.0)),
                TextFormField(
                  keyboardType: TextInputType.phone,
                  decoration: InputDecoration(
                    hintText: "Phone Number",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20.0)),
                  ),
                  validator: (a) {
                    if (a.isEmpty) {
                      return "Please fill your phone number";
                    }
                  },
                ),
                Padding(padding: EdgeInsets.all(10.0)),
                TextFormField(
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                    labelText: "Password",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20.0)),
                  ),
                  validator: (a) {
                    if (a.isEmpty) {
                      return "Please fill your password";
                    }
                  },
                  obscureText: true,
                ),
                Padding(padding: EdgeInsets.all(10.0)),
                RaisedButton(
                  onPressed: () {
                    if (_formKey.currentState.validate()) {
                      // Navigator.of(context).push(MaterialPageRoute(
                      //     builder: (BuildContext context) => new FinishApp()));

                      Navigator.pushNamed(context, '/Finish');
                    }
                  },
                  child: Text("Submit"),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class FinishBaru extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Finish Baru!"),
      ),
      body: Center(
        child: Text("Thank you!"),
      ),
    );
  }
}
