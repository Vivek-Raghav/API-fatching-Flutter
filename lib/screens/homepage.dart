import 'dart:convert';


import 'package:flutter/material.dart';
import 'package:http/http.dart'as http;

import '../drawer.dart';

class MyHomepage extends StatefulWidget {
  const MyHomepage({Key? key}) : super(key: key);

  @override
  State<MyHomepage> createState() => _MyHomepageState();
}

class _MyHomepageState extends State<MyHomepage> {


  var photosData;
  



getDataFromApi()  async {








  var data  =  await  http.get(Uri.parse("https://jsonplaceholder.typicode.com/photos"));

  if(data.statusCode==200){

    
    setState(() {
      photosData = jsonDecode(data.body);
     
      
    });
    

    // print(photosData.length);
    


    // for(int i=0;i<photosData.length;i++){
    //   print(photosData[i]["url"]);
    // }

   
  }
  

  
}

@override
  void initState() {

    
  getDataFromApi();
    super.initState();
  }





  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.orange,
          child: Icon(
            Icons.edit,
            color: Colors.black,
          ),
          onPressed: () {


            getDataFromApi();
          },
        ),
        appBar: AppBar(
          backgroundColor: Colors.orange,
          centerTitle: true,
          title: Text("Api Fatching")
          ,
        ),
        body: photosData!=null ? Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
          child: ListView.builder
          
          (
            
            itemCount: photosData.length,
            
            itemBuilder: ((context, index) {
            return ListTile(
              
              title: Text(photosData[index]["title"]),
              subtitle: Text(photosData[index]["id"].toString()),              
              leading: Image.network(photosData[index]["thumbnailUrl"]),


            );
          }
          ),
          ),
        ): 
        Center(
          child: CircularProgressIndicator(),
        ),
        
        
       drawer: Mydrawer(),
      );
    
  }
}