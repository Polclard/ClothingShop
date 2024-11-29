import 'package:flutter/material.dart';
import 'package:flutter_projects/product_details.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  static const List<Map<String, dynamic>> products = [
    {
      'name': 'Маица',
      'image': '../assets/tshirt.jpg',
      'description': 'Удобна памучна маица.',
      'price': '500 ден'
    },
    {
      'name': 'Фармерки',
      'image': '../assets/jeans.jpg',
      'description': 'Модерни фармерки за секојдневно носење.',
      'price': '1200 ден'
    },
    {
      'name': 'Јакна',
      'image': 'https://assets.manufactum.de/p/068/068675/68675_01.jpg/ladies-trench-coat-etaproof.jpg?profile=pdsmain_1000',
      'description': 'Топла зимска јакна.',
      'price': '3500 ден'
    },
    {
      'name': 'Патики',
      'image': 'https://t3.ftcdn.net/jpg/00/77/52/94/360_F_77529477_n4TqondFEsZWUpKcJXg5TiWndYnvzsqc.jpg',
      'description': 'Удобни спортски патики.',
      'price': '1500 ден'
    },
    {
      'name': 'Кошула',
      'image': 'https://m.media-amazon.com/images/I/51rkKPruYvL._AC_SX466_.jpg',
      'description': 'Елегантна кошула за сите прилики.',
      'price': '1300 ден'
    },
    {
      'name': 'Палто',
      'image': 'https://assets.manufactum.de/p/066/066382/66382_01.jpg/ladies-trench-coat-etaproof.jpg?w=0&scale.option=fill&h=400&canvas.aspectratio=1%3A1&canvas.width=157.1000%25&canvas.height=100.0000%25',
      'description': 'Модерно зимско палто.',
      'price': '2500 ден'
    },
    {
      'name': 'Чевли',
      'image': 'https://www.shutterstock.com/shutterstock/photos/379535998/display_1500/stock-photo-black-leather-male-shoes-white-background-379535998.jpg',
      'description': 'Луксузни чевли за вечерни излегувања.',
      'price': '5000 ден'
    },
    {
      'name': 'Шапка',
      'image': 'https://thumbs.dreamstime.com/b/panamanian-straw-hat-6715080.jpg',
      'description': 'Летна шапка за заштита од топлина и стил.',
      'price': '800 ден'
    }
  ];


  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("211072"),
        backgroundColor: Colors.teal,
      ),
      body: ListView.builder(
        itemCount: products.length,
        itemBuilder: (context, index) {
          return Card(
            margin: EdgeInsets.all(8.0),
            child: ListTile(
              leading: Image.network(products[index]['image']),
              title: Text(products[index]['name']),
              subtitle: Text(products[index]['price']),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ProductDetails(product: products[index]),
                  ),
                );
              },
            ),
          );
        },
      ),
    );
  }
}

