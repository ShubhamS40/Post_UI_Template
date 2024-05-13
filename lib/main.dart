import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {    
  List data=[
    {
      "image":"https://cdn.pixabay.com/photo/2018/01/12/10/19/fantasy-3077928_1280.jpg",
      "name":"Norway",
      "like":"455"
    },
    {
      "image":"https://cdn.pixabay.com/photo/2015/12/01/20/28/road-1072821_1280.jpg",
      "name":"Refresh",
      "like":"355"
    },

    {
      "image":"https://cdn.pixabay.com/photo/2014/12/16/22/25/woman-570883_960_720.jpg",
      "name":"Haven",
      "like":"355"
    },

    {
      "image":"https://cdn.pixabay.com/photo/2013/07/18/20/26/sea-164989_1280.jpg",
      "name":"Moonlight",
      "like":"205"
    },

    {
      "image":"https://cdn.pixabay.com/photo/2016/12/27/21/03/lone-tree-1934897_960_720.jpg",
      "name":"Goa Beach",
      "like":"855"
    },

    {
      "image":"https://cdn.pixabay.com/photo/2017/12/15/13/51/polynesia-3021072_960_720.jpg",
      "name":"Moscow",
      "like":"561"
    }
  ];
  @override
  Widget build(BuildContext context) {
   return MaterialApp(
    debugShowCheckedModeBanner: false,
        home: SafeArea(
       child:  Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromARGB(238, 2, 158, 215),
          title: Text("Shubham Post App",style: TextStyle(color: Colors.white),),
        ),
        body: ListView.builder(
         itemCount: data.length,
         itemBuilder: (context, index){ 
          return Container(
          color: Color.fromRGBO(59, 131, 239, 1),
          height: 300,
          padding: EdgeInsets.all(15),
            child: Column(
              children: [
             Image(image: NetworkImage(data[index]["image"]),),
             
             Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
             Text(data[index]["name"],style: TextStyle(color: Colors.white,fontSize: 15,fontWeight: FontWeight.w600),),
              Row(
                
               children: [
                
                 Icon(Icons.heart_broken_rounded,color: Colors.white,),
                 SizedBox(width: 10),
                Text(data[index]["like"],style: TextStyle(color: Colors.white),),
               ],
              ),
              ],
             )

            ],),
        );
          },
        ),
      ),
    ),
    );
  }
}