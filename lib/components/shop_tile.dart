import 'package:e_commerce/models/shoe.dart';
import 'package:flutter/material.dart';

class ShopTile extends StatelessWidget {
  ShopTile({required this.shoe,required this.onTap, super.key});
  Shoe shoe;
  void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 25),
      width: 300,
      decoration: BoxDecoration(
          color: Colors.grey[100], borderRadius: BorderRadius.circular(12)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            height: 300, 
            width: 300,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Image(
                fit: BoxFit.cover,
                image: AssetImage(  shoe.imagePath,)
              
              ),
            ),
          ),
          Padding(
            padding:  EdgeInsets.symmetric(horizontal: 25),
            child: Text(
              shoe.description,
              style: TextStyle(
                color: Colors.grey[600],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 25.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(shoe.name, style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),),
                    SizedBox(height: 5,),
                    Text('\$' +shoe.price, style: TextStyle(
                    color: Colors.grey
                  ),),
                  ],
                ),
            GestureDetector(
              onTap: onTap,
              child: Container(
                
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.only(
              topLeft: Radius.circular(12),
              bottomRight: Radius.circular(12),
                  ),
                ),
                child: Icon(Icons.add,color: Colors.white,)),
            ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
