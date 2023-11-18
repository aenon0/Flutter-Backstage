import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: ExpandedInstance(),
    );
  }
}

// class LayoutBasics extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(body: PaddinglessProduct());
//     // SingleChildScrollView(child: Column(children: [VerticalProducts() ,SingleChildScrollView(
//     //   scrollDirection: Axis.horizontal,
//     //     child: HorizontalProducts())])))
//   }
// }

class ExpandedInstance extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(children: [PaddinglessProduct(), PaddinglessProduct(), PaddinglessProduct(), PaddinglessProduct(), PaddinglessProduct(), PaddinglessProduct(), PaddinglessProduct()]);
  }
}
// class VerticalProducts extends StatelessWidget{
//   @override
//   Widget build(BuildContext context){
//     return Column(
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 children: [Product(), Product(), Product()]);
//   }
// }

// class HorizontalProducts extends StatelessWidget{
//   @override
//   Widget build(BuildContext context){
//     return SingleChildScrollView(child: Row(children: [Product(), Product(), Product()],));
//   }
// }
// class Product extends StatelessWidget{
//   @override
//   Widget build(BuildContext context){
//     return Padding(padding:EdgeInsets.only( top: 16, bottom: 8, right: 8, left:16) , child: Container(width: 400, height:300, child: Image.asset("food.jpg")));
//   }
// }

class PaddinglessProduct extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(width: 150, height: 200, child: Image.asset("food.jpg", fit: BoxFit.cover));
  }
}
