import 'package:flutter/material.dart';
import 'package:projectflutter/ecommerce/itemPage.dart';
import 'package:projectflutter/models/marketItems.dart';

class ShoppingItemPage extends StatefulWidget{
  const ShoppingItemPage({super.key});

  @override
  _ShoppingItemPageState createState() => _ShoppingItemPageState();


}

class _ShoppingItemPageState  extends State<ShoppingItemPage>{

  @override
  Widget build(BuildContext context) {
    var mq= MediaQuery.of(context);
  return GridView.builder(gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
physics:const NeverScrollableScrollPhysics(),
    itemBuilder:(context,index){
    return InkWell(
      onTap: (){
        Navigator.push(context, MaterialPageRoute(builder: (context)=>ItemPage(ItemModel: marketdata[index])));
      },
      child: Container(
        margin: const  EdgeInsets.all(3),
        height: mq.size.height,
        // width: 185,
        // color: Colors.purple,
        child: Column(
          children: [
            Expanded(
              child: SizedBox(
                  width: double.infinity,
                      // height: mq.size.height*0.4,
                  child:  Hero(
                      tag: "item",
                      child: Image(image: AssetImage(marketdata[index].itemImage),fit: BoxFit.fill,))),
            ),
             Text("${marketdata[index].itemPrice}.${marketdata[index].itemTitle}",
             maxLines: 1,
             overflow: TextOverflow.ellipsis,
             )

          ],
        ),
      ),
    );
  },
  itemCount: marketdata.length,
  shrinkWrap: true,
    primary: false,
  );
  }
}