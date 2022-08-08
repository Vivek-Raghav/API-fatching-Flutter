 import 'package:flutter/material.dart';
 
 class Mydrawer extends StatelessWidget {
  const Mydrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return 
    Drawer(
          backgroundColor: Colors.orangeAccent,
          child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              UserAccountsDrawerHeader(
                accountName: Text("Vivek"),
                accountEmail: Text("vivekraghva@gmail.com"),
                currentAccountPicture: CircleAvatar(
                    backgroundImage: NetworkImage(
                        "https://images.unsplash.com/photo-1644982647844-5ee1bdc5b114?ixlib=rb-1.2.1&ixid=MnwxMjA3fDF8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1074&q=80")),

                // DrawerHeader(
                //   child: Text("Welcome to Vivek's App"),
                //   decoration: BoxDecoration(color: Colors.deepOrange),
              ),
              ListTile(
                leading: Icon(Icons.person),
                title: Title(color: Colors.black, child: Text("Account")),
              ),
              ListTile(
                leading: Icon(Icons.settings),
                title: Title(color: Colors.black, child: Text("Settings")),
              ),
              ListTile(
                leading: Icon(Icons.wheelchair_pickup),
                title: Title(color: Colors.black, child: Text("Your Orders")),
              ),
              ListTile(
                leading: Icon(Icons.card_travel),
                title: Title(color: Colors.black, child: Text("Your Cart")),
              ),
            ],
          ),
    );
    
  }
}
 
 