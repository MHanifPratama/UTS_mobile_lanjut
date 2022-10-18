import 'dart:async';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
void main() {
  runApp(MyApp());
}
  
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Splash Screen',
      theme: ThemeData(
        primarySwatch: Colors.blue,
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
    Timer(Duration(seconds: 3),
          ()=>Navigator.pushReplacement(context,
                                        MaterialPageRoute(builder:
                                                          (context) => 
                                                          SecondScreen()
                                                         )
                                       )
         );
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
     child:Center(child:new Image.asset('assets/yubis_logo.png'))
    );
  }
}
class SecondScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor:Colors.white ,title:Image.asset('assets/yubis_logo.png'),actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.search,color: Colors.grey),
            tooltip: 'Comment Icon',
            onPressed: () {},
          ), //IconButton
          IconButton(
            icon: const Icon(Icons.shopping_basket, color: Colors.grey),
            tooltip: 'Setting Icon',
            onPressed: () {},
          ), //IconButton
        ],),
        body: ListView(
        children: [
          CarouselSlider(
              items: [
                Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage("assets/banner1.jpeg"),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                  
                //2nd Image of Slider
                Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage("assets/banner2.jpeg"),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                  
                //3rd Image of Slider
                Container(
                  decoration: BoxDecoration(

                    image: DecorationImage(
                      image: NetworkImage("assets/banner3.jpeg"),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),       
          ],
            //Slider Container properties
              options: CarouselOptions(
                // height: 180.0,
                // enlargeCenterPage: true,
                // autoPlay: false,
                aspectRatio: 16 / 9,
                viewportFraction: 1.0,
              ),
          ),
        ],
      ),
  bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.business,color: Colors.grey),
            label: 'Beranda',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.business,color: Colors.grey),
            label: 'Produk',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.business,color: Colors.grey),
            label: 'Promo',
            backgroundColor: Colors.purple,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.business,color: Colors.grey),
            label: 'Transaksi',
            backgroundColor: Colors.pink,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.business,color: Colors.grey),
            label: 'Akun',
          ),
        ],
    )
    );
      
  }
}