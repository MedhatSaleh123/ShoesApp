import 'package:e_commerce/components/shop_tile.dart';
import 'package:e_commerce/models/cart.dart';
import 'package:e_commerce/models/shoe.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ShopPage extends StatefulWidget {
  const ShopPage({super.key});

  @override
  State<ShopPage> createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {
 void addShoeToCart(Shoe shoe){
  Provider.of<Cart>(context,listen:false).addItemToCart(shoe);

showDialog(context: context, builder: (context) {
  
  return AlertDialog(
    shape: OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),
    ),
    title: Text("Successfully added!"),
    content: Text("Check your cart",
    
    ),
    actions: [
      SizedBox(),
      TextButton(child: Text('Ok',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
      onPressed: ()=>Navigator.of(context).pop(),)
      ],
  );
},);
 }


  @override
  Widget build(BuildContext context) {
    return Consumer<Cart>(
      builder: (context, value, child) => Column(
        children: [
          Container(
            padding: const EdgeInsets.all(12),
            margin: const EdgeInsets.symmetric(horizontal: 25),
            decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.circular(8)),
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Search',
                  style: TextStyle(color: Colors.grey, fontSize: 20),
                ),
                Icon(
                  Icons.search,
                  size: 27,
                  color: Colors.grey,
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 25.0),
            child: Text(
              'everyone flies .. some fly longer than others',
              style: TextStyle(
                color: Colors.grey[600],
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 25),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Hot Picks 🔥",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 24,
                  ),
                ),
                Text(
                  "See all",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.blue,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Expanded(
              child: ListView.builder(
            physics: const BouncingScrollPhysics(),
            itemCount: 4,
          

            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
             
              Shoe shoe = value.getShoeList()[index];
              return ShopTile(shoe: shoe,
              onTap:
               () => addShoeToCart(shoe),
              );
            },
          )),
          const Padding(
            padding: EdgeInsets.only(top: 25, left: 25, right: 25),
            child: Divider(
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
