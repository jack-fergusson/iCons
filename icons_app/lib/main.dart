import 'dart:async';
import 'screensearch.dart';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'home.dart';

void main() {

  runApp(MyApp());

}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Splash Screen',
      theme: ThemeData(
        primaryColor: Color(0xFF0D47A1),
      ),
      home: MyHomePage(),

      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 5),
        () => Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => SecondScreen())));
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Center(

        child: Image(image: AssetImage('assets/logo.png'),height: 200, width: 200,),),
      );


  }
}




class SecondScreen extends StatelessWidget {
  const SecondScreen({Key? key}) : super(key: key);

  static const String _title = 'Sample App';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      home: Scaffold(
        body: const MyStatefulWidget(),
      ),
    );
  }



}
class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({Key? key}) : super(key: key);

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();

}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {

  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(10),
        child: ListView(
          children: <Widget>[
            Container(
                alignment: Alignment.center,
                padding: const EdgeInsets.all(10),
                child: Image(image: AssetImage('assets/logo.png'),height: 100, width: 100,)),
            Container(
                alignment: Alignment.center,
                padding: const EdgeInsets.all(10),
                child: const Text(
                  'SIGN IN',
                  style: TextStyle(
                    fontSize: 20,
                    color: Color.fromRGBO(3, 37, 78, 1),
                    fontWeight: FontWeight.bold,
                    fontFamily: 'peepee',
                  ),
                )),
            Container(
              padding: const EdgeInsets.all(10),
              child: TextField(
                controller: nameController,
                decoration: const InputDecoration(

                  labelText: 'User Name',
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
              child: TextField(
                obscureText: true,
                controller: passwordController,
                decoration: const InputDecoration(

                  labelText: 'Password',
                ),
              ),
            ),
            TextButton(
              onPressed: () {
                //forgot password screen
              },
              child: const Text('Forgot Password', style: TextStyle(fontSize: 15, color: Color.fromRGBO(3, 37, 78, 1), fontFamily: 'peepee',fontWeight: FontWeight.bold)),
            ),
            Container(
                height: 50,
                padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Color.fromRGBO(3, 37, 78, 1), // background
                     // foreground
                  ),
                  child: const Text('Login', style: TextStyle(fontFamily: 'peepee', fontSize: 20),),
                  onPressed: () {

                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (BuildContext context) {
                        return Homescreen();
                      },),
                    );

                  },
                )
            ),
            Row(
              children: <Widget>[
                const Text("Don't have account?", style: TextStyle(fontSize: 15, color: Color.fromRGBO(3, 37, 78, 1), fontFamily: 'peepee',)),
                TextButton(
                  child: const Text(
                    'Sign Up',
                    style: TextStyle(fontSize: 20, color: Color.fromRGBO(3, 37, 78, 1), fontFamily: 'peepee',),
                  ),
                  onPressed: () {

                  },
                )
              ],
              mainAxisAlignment: MainAxisAlignment.center,
            ),
          ],
        ));
  }
}
/*
class SecondRoute extends StatelessWidget {

  const SecondRoute({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Container(



        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(onPressed: () {Navigator.pop(context);}, icon: Icon(Icons.account_circle_sharp), iconSize: 50,),

            IconButton(onPressed: () {Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const infoscreen()),
            );}, icon: Icon(Icons.info_outline_rounded), iconSize: 30,),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
            backgroundColor: Colors.black,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Search',

          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            label: 'Cart',

          ),
        ],



      ),

    );

  }

}
class infoscreen extends SecondRoute {
  const infoscreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(

        body: Container(
            alignment: Alignment(0, 0),
            child: Column(

              children: [
                IconButton(onPressed: () {Navigator.pop(context);}, icon: Icon(Icons.arrow_back), iconSize: 50,),
                Image(image: AssetImage('assets/contact2.png'),height: 400, width: 400,),
                Text(

                  'Contact Us',
                  style: TextStyle(
                    fontSize: 30,
                    color: Color(0xFF0D47A1),
                    fontWeight: FontWeight.bold,
                    fontFamily: 'peepee',
                  ),
                ),

                IconButton(onPressed: () {}, icon: Icon(Icons.phone), iconSize: 30,),
                IconButton(onPressed: () {}, icon: Icon(Icons.email), iconSize: 30,),

              ],
            )


        )
    );
  }
}
*/


