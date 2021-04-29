import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        // MediaQueryData screensize = MediaQuery.of(context).size.height,
        title: 'Portfolio App',
        debugShowCheckedModeBanner: false,
        home: Home());
  }
}

class Home extends StatelessWidget {
  const Home({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final data = MediaQuery.of(context);
    return Scaffold(
      body: Stack(children: [
        Container(
            constraints: BoxConstraints.expand(),
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('images/face.jpg'), fit: BoxFit.cover)),
            child: Align(
              alignment: Alignment.topLeft,
              child: SafeArea(
                  child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Z.',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 30,
                            fontStyle: FontStyle.normal,
                            fontWeight: FontWeight.bold)),
                    Icon(
                      Icons.menu,
                      color: Colors.white,
                      size: 38,
                    )
                  ],
                ),
              )),
            )),
        Positioned(
          top: data.size.height / 1.39,
          left: 0,
          right: 0,
          child: Column(children: [
            Text(
              'Hola, Yo Soy',
              style: TextStyle(color: Colors.white, fontSize: 22),
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              'Johnmicheal',
              style: TextStyle(color: Colors.white, fontSize: 40),
            ),
            SizedBox(
              height: 7,
            ),
            Text(
              'Flutter Newbie & AI Specialist',
              style: TextStyle(color: Colors.white, fontSize: 15),
            ),
            SizedBox(
              height: 15,
            ),
            // Divider(color: Colors.white, height: 20.0,)
            Container(
              height: 30,
              width: 80,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(6.0),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.grey,
                        offset: Offset(0.0, 1.0),
                        blurRadius: 2.0)
                  ]),
              alignment: Alignment.center,
              child: Text(
                'Hire Me',
                style:
                    TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 25,
            ),
            Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
              Expanded(
                  child: new Container(
                margin: const EdgeInsets.only(left: 15.0, right: 10.0),
                // margin: const EdgeInsets.only(top: 15),
                child: Divider(
                  color: Colors.grey,
                  height: 10.0,
                ),
              )),
              Padding(
                padding: const EdgeInsets.only(right: 8.0),
                child: Icon(
                  Icons.email,
                  color: Colors.white,
                  size: 18,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 8.0),
                child: Icon(
                  Icons.add_ic_call_rounded,
                  color: Colors.white,
                  size: 18,
                ),
              ),
              Icon(
                Icons.add_location,
                color: Colors.white,
                size: 18,
              ),
              Expanded(
                  child: new Container(
                margin: const EdgeInsets.only(left: 15.0, right: 10.0),
                // margin: const EdgeInsets.only(top: 15),
                child: Divider(
                  color: Colors.grey,
                  height: 10.0,
                ),
              ))
            ])
          ]),
        ),
      ]),
    );
  }
}
