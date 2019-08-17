import 'package:flutter/material.dart';

class HorizontalList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100.0,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          Category(
            imageLocation: 'images/cats/accessories.png',
            imageCaption: 'Accessories',
          ),
          Category(
            imageLocation: 'images/cats/dress.png',
            imageCaption: 'Dress',
          ),
          Category(
            imageLocation: 'images/cats/formal.png',
            imageCaption: 'Formal',
          ),
          Category(
            imageLocation: 'images/cats/informal.png',
            imageCaption: 'Informal',
          ),
          Category(
            imageLocation: 'images/cats/jeans.png',
            imageCaption: 'Jeans',
          ),
          Category(
            imageLocation: 'images/cats/shoe.png',
            imageCaption: 'Shoe',
          ),
          Category(
            imageLocation: 'images/cats/tshirt.png',
            imageCaption: 'T-Shirt',
          ),
        ],
      ),
    );
  }
}

class Category extends StatelessWidget {
  Category({this.imageCaption, this.imageLocation});

  final String imageLocation;
  final String imageCaption;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(2.0),
      child: InkWell(
        onTap: () {},
        child: Container(
          width: 100.0,
          child: ListTile(
            title: Image.asset(
              imageLocation,
              width: 100,
            ),
            subtitle: Container(
              alignment: Alignment.topCenter,
              child: Text(
                imageCaption,
                style: TextStyle(fontSize: 12.0),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class Inkwell_Data extends StatelessWidget {
  Inkwell_Data(
      {this.onTap, @required this.title, @required this.icon, this.color});

  final String title;
  final IconData icon;
  final Color color;
  final Function onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: ListTile(
        title: Text(title),
        leading: Icon(
          icon,
          color: color,
        ),
      ),
    );
  }
}


