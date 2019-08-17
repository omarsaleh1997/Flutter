import 'package:flutter/material.dart';
import 'package:e_commerce/componants/componant.dart';
import 'package:e_commerce/componants/image_carousel.dart';
import 'package:e_commerce/pages/products_details.dart';


void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: HomePage(),
  ));
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.1,
        title: Text('Shopping'),
        backgroundColor: Colors.red,
        actions: <Widget>[
          IconButton(
              icon: Icon(
                Icons.search,
                color: Colors.white,
              ),
              onPressed: () {}),
          IconButton(
              icon: Icon(
                Icons.shopping_cart,
                color: Colors.white,
              ),
              onPressed: () {}),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            //header
            UserAccountsDrawerHeader(
              accountName: Text('Omar'),
              accountEmail: Text('omar@gmail.com'),
              currentAccountPicture: GestureDetector(
                child: CircleAvatar(
                  backgroundColor: Colors.grey,
                  child: Icon(
                    Icons.person,
                    color: Colors.white,
                    size: 60.0,
                  ),
                ),
              ),
              decoration: BoxDecoration(color: Colors.red),
            ),

////////////////////////////////////////////////////////////////////////////////////////
            //body

            Inkwell_Data(
              onTap: () {},
              title: 'Home Page',
              icon: Icons.home,
            ),
            Inkwell_Data(
              onTap: () {},
              title: 'My account',
              icon: Icons.person,
            ),
            Inkwell_Data(
                onTap: () {},
                title: 'My Orders',
                icon: Icons.shopping_basket),
            Inkwell_Data(
              onTap: () {},
              title: 'Categories',
              icon: Icons.dashboard,
            ),
            Inkwell_Data(
              onTap: () {},
              title: 'Favorites',
              icon: Icons.favorite,
            ),
            Divider(),
            Inkwell_Data(
              onTap: () {},
              title: 'Settings',
              icon: Icons.settings,
              color: Colors.green,
            ),
            Inkwell_Data(
              onTap: () {},
              title: 'About',
              icon: Icons.help,
              color: Colors.blue,
            ),
          ],
        ),
      ),
      body: ListView(
        children: <Widget>[
          // carousel
          images_carousel,

          Padding(
            padding: EdgeInsets.all(8.0),
            child: Text('Categories'),
          ),

          //Horizontal list view begins

          HorizontalList(),
          Padding(
            padding: EdgeInsets.all(30.0),
            child: Text('Recent Products'),
          ),

          //grid view

          Container(
            height: 320.0,
            child: Products(),
          )
        ],
      ),
    );
  }
}

//InkWell(
//onTap: () {},
//child: ListTile(
//title: Text('My account'),
//leading: Icon(Icons.person),
//),
//),
//InkWell(
//onTap: () {},
//child: ListTile(
//title: Text('My Orders'),
//leading: Icon(Icons.shopping_basket),
//),
//),
//InkWell(
//onTap: () {},
//child: ListTile(
//title: Text('Categories'),
//leading: Icon(Icons.dashboard),
//),
//),
//InkWell(
//onTap: () {},
//child: ListTile(
//title: Text('Favorites'),
//leading: Icon(Icons.favorite),
//),
//),
//Divider(),
//InkWell(
//onTap: () {},
//child: ListTile(
//title: Text('Settings'),
//leading: Icon(Icons.settings),
//),
//),
//InkWell(
//onTap: () {},
//child: ListTile(
//title: Text('About'),
//leading: Icon(Icons.help),
//),
//),
