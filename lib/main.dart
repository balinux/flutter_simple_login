import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      home: MyHomePage(title: 'Flutter Demo Home Page'),
      routes: {
        '/profile': (context) => Profile(),
      },
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
  @override
  void initState() {
    SystemChrome.setEnabledSystemUIOverlays([]);
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.maxFinite,
        height: double.maxFinite,
        child: Stack(
          children: <Widget>[
            Image.asset(
              "images/cover.png",
              width: double.maxFinite,
            ),
            Positioned(
              top: 10,
              right: 10,
              width: 50,
              height: 50,
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.purple.shade300.withOpacity(.3),
                  borderRadius: BorderRadius.all(Radius.circular(100)),
                ),
                child: GestureDetector(
                  onTap: (){
                    Navigator.pushNamed(context, '/profile');
                  },
                  child: Icon(Icons.person_pin,color: Colors.white),
                )
              ),
            ),
            Positioned(
              top: 150,
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 35),
                child: Text(
                  'Sign In',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.purple,
                  ),
                ),
              ),
            ),
            Positioned(
              top: 180,
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 20, horizontal: 18),
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(32),
                        topRight: Radius.circular(32))),
                child: Column(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(top: 20.0),
                      child: TextField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Username',
                          prefixIcon: const Icon(
                            Icons.person,
                            color: Colors.purple,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 16),
                      child: TextField(
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: 'Password',
                            prefixIcon: const Icon(
                              Icons.lock,
                              color: Colors.purple,
                            )),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 20),
                      height: 50,
                      width: double.maxFinite,
                      decoration: BoxDecoration(
                          color: Colors.purple.shade300,
                          borderRadius: BorderRadius.all(Radius.circular(32))),
                      child: Center(
                        child: Text(
                          'LOGIN',
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 15),
                      child: Center(
                        child: Text(
                          'Forgot Password',
                          style: TextStyle(fontSize: 15, color: Colors.grey),
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Container(
                            width: 50,
                            height: 50,
                            decoration: BoxDecoration(
                              color: Colors.purple.shade300,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(50)),
                            ),
                            child: Center(
                                child: Icon(Icons.face, color: Colors.white)),
                          ),
                          Container(
                            width: 40,
                          ),
                          Container(
                            width: 50,
                            height: 50,
                            decoration: BoxDecoration(
                              color: Colors.purple.shade300,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(50)),
                            ),
                            child: Center(
                                child: Icon(Icons.fingerprint,
                                    color: Colors.white)),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
      ),
      body: Center(
        child: Text('Profile page'),
      ),
    );
  }
}
