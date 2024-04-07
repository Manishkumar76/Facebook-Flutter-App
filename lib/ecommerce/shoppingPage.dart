// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:projectflutter/ecommerce/shoppingItemPage.dart';

class ShoppingPage extends StatefulWidget{
  const ShoppingPage({Key?key}):super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _ShoppingPageState createState()=>_ShoppingPageState();
}

class _ShoppingPageState extends State<ShoppingPage>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title: const Text("Marketplace",style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),),
        actions:<Widget> [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 6),
            child: IconButton(onPressed: (){},
                icon:const Icon(Icons.account_circle),
              iconSize: 35,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 6),
            child: IconButton(onPressed: (){},
              icon:const Icon(Icons.search_rounded),
              iconSize: 35,
            ),
          )
        ],
      ),
      body:SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child:Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ElevatedButton(onPressed: (){}, child: const  Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children:  [
                          Icon(Icons.edit_square,color: Colors.black,),
                          Text(" Sell",style: TextStyle(color: Colors.black),)
                        ],
                      )),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ElevatedButton(onPressed: (){}, child:const  Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.list,color: Colors.black,),
                          Text(" Categories",style: TextStyle(color: Colors.black))
                        ],
                      )),
                    ),
                  )
                ],
              ),
            const Padding(
              padding: EdgeInsets. symmetric(horizontal: 8),
              child:  Divider(
                thickness: 1,
                color: Colors.grey,
              ),
            ),

           const Row(
             children: [
               Padding(
                 padding:  EdgeInsets.all(8.0),
                 child: Text("Today's Picks",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w900)),
               )
             ],
           ),
            // GridView.count(
            //   crossAxisCount: 2,
            //   primary: false,
            //   crossAxisSpacing: 10,
            //   mainAxisSpacing: 10,
            //   children: <Widget> [
            //     Column(
            //       children: [
            //         Container(
            //             child: const Image(image: AssetImage("assets/Images/1.jpg")))
            //       ],
            //     )
            //   ],
            // )
            const ShoppingItemPage(),

          ],
        )
        ,
      )
    );
  }}
