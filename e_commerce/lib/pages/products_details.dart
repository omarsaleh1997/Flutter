import 'package:flutter/material.dart';

class ProductDetails extends StatefulWidget {
  @override
  _ProductDetailsState createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}


class Products extends StatefulWidget {
  @override
  _ProductsState createState() => _ProductsState();
}

class _ProductsState extends State<Products> {
  var productList = [
    {
      "name": 'Bleazer',
      'picture': 'images/products/blazer1.jpeg',
      'oldPrice': 120,
      'price': 85,
    },
    {
      "name": 'Bleazer',
      'picture': 'images/products/blazer2.jpeg',
      'oldPrice': 120,
      'price': 85,
    },
    {
      "name": 'Dress',
      'picture': 'images/products/dress1.jpeg',
      'oldPrice': 120,
      'price': 85,
    },
    {
      "name": 'Dress',
      'picture': 'images/products/dress2.jpeg',
      'oldPrice': 120,
      'price': 85,
    },
    {
      "name": 'Hills',
      'picture': 'images/products/hills1.jpeg',
      'oldPrice': 120,
      'price': 85,
    },
    {
      "name": 'Hills',
      'picture': 'images/products/hills2.jpeg',
      'oldPrice': 120,
      'price': 85,
    },
    {
      "name": 'Pants',
      'picture': 'images/products/pants1.jpg',
      'oldPrice': 120,
      'price': 85,
    },
    {
      "name": 'Pants',
      'picture': 'images/products/pants2.jpeg',
      'oldPrice': 120,
      'price': 85,
    },
    {
      "name": 'Shoe',
      'picture': 'images/products/shoe1.jpg',
      'oldPrice': 120,
      'price': 85,
    },
    {
      "name": 'Skirt',
      'picture': 'images/products/skt1.jpeg',
      'oldPrice': 120,
      'price': 85,
    },
    {
      "name": 'Skirt',
      'picture': 'images/products/skt2.jpeg',
      'oldPrice': 120,
      'price': 85,
    },
  ];
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        gridDelegate:
        SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemCount: productList.length,
        itemBuilder: (BuildContext context, int index) {
          return Product(
            name: productList[index]['name'],
            picture: productList[index]['picture'],
            oldPrice: productList[index]['oldPrice'],
            price: productList[index]['price'],
          );
        });
  }
}

class Product extends StatelessWidget {
  @override
  final name;
  final picture;
  final oldPrice;
  final price;

  Product({this.name, this.picture, this.oldPrice, this.price});

  Widget build(BuildContext context) {
    return Card(
      child: Hero(
          tag: name,
          child: Material(
            child: InkWell(
              onTap: () =>Navigator.of(context).push(route),
              child: GridTile(
                child: Image.asset(
                  picture,
                  fit: BoxFit.cover,
                ),
                footer: Container(
                  color: Colors.white70,
                  child: ListTile(
                    leading: Text(
                      name,
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    title: Text(
                      "\$$price",
                      style: TextStyle(
                          color: Colors.red, fontWeight: FontWeight.w800),
                    ),
                    subtitle: Text(
                      "\$$oldPrice",
                      style: TextStyle(
                          color: Colors.black54,
                          decoration: TextDecoration.lineThrough,
                          fontWeight: FontWeight.w800),
                    ),
                  ),
                ),
              ),
            ),
          )),
    );
  }
}
