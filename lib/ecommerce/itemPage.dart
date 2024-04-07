import 'package:flutter/material.dart';
// import 'package:projectflutter/ecommerce/shoppingPage.dart';

class ItemPage extends StatelessWidget{
  final ItemModel;

  const ItemPage({super.key,required this.ItemModel});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: (){
            Navigator.pop(context);
          },
        ),
        title: const Text(""),
        actions: <Widget>[
          
          IconButton(onPressed: (){}, icon:const  Icon(Icons.search_rounded),iconSize: 30,),
          IconButton(onPressed: (){}, icon:const  Icon(Icons.more_horiz_outlined),iconSize: 30,),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                height: 500,
                width: 700,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(ItemModel.itemImage),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              SizedBox(height: 16),
              Text(
                ItemModel.itemTitle,
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 8),
              Text(
                ItemModel.itemDiscription
                ,style: TextStyle(fontSize: 16, color: Colors.grey),
              ),
              SizedBox(height: 16),
              Text(
                ItemModel.itemPrice,
                style: TextStyle(fontSize: 20, color: Colors.green),
              ),
              SizedBox(height: 16),
              ElevatedButton(
                onPressed: () {
                  // Implement action when the Buy button is pressed
                  // For example, navigate to a checkout page
                },
                child: Text('Buy Now'),
              ),
                  const    SizedBox(
                        width:double.infinity,
                        height: 100,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                              Row(
                               mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Icon(Icons.messenger_outline_rounded),
                                 Text("Send seller a message"),
                              ],
                            ),
            ],
          ),
        ),
    ]
    ),
    )
      )
      // SingleChildScrollView(
      //   scrollDirection: Axis.vertical,
      //   child: Column(
      //     crossAxisAlignment: CrossAxisAlignment.start,
      //               children: [
      //       SizedBox(
      //         height: 400,
      //         width: double.infinity,
      //         child: Hero(
      //           tag: "item",
      //           child: Image(
      //             image: AssetImage(ItemModel.itemImage),
      //           ),
      //         ),
      //       ),
      //       Padding(
      //         padding: const EdgeInsets.symmetric(horizontal: 8),
      //         child: Text(ItemModel.itemTitle,style: const TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
      //       ),
      //       Padding(
      //         padding: const EdgeInsets.symmetric(horizontal: 8),
      //         child: Text(ItemModel.itemPrice),
      //       ),
      //         SizedBox(
      //           width:double.infinity,
      //           height: 100,
      //           child: Column(
      //             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      //             children: [
      //               const  Row(
      //                  mainAxisAlignment: MainAxisAlignment.start,
      //                 children: [
      //                   Icon(Icons.messenger_outline_rounded),
      //                    Text("Send seller a message"),
      //                 ],
      //               ),
      //                Row(
      //                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      //                  children: [
      //                    const   TextField(
      //
      //                      decoration:  InputDecoration(
      //                        border: OutlineInputBorder(
      //
      //                        ),
      //                        helperText: "Hi,is this available?",
      //                      ),
      //                    ),
      //                    ElevatedButton(onPressed: (){}, child:const  Text("Send")),
      //                  ],
      //                )
      //             ],
      //           ),
      //
      //         ),
      //
      //
      //
      //     ],
      //   ),
      // ),

    );
  }
}