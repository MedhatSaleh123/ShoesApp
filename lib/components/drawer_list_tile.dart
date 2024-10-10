import 'package:flutter/material.dart';
 class DrawerListTile extends StatelessWidget {
final String text;
final IconData icon;
  const DrawerListTile({
    super.key, required this.text, required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(padding: EdgeInsets.only(left:25),child:
    ListTile(
      leading: Padding(
        padding: const EdgeInsets.only(right: 12.0),
        child: Icon(icon,color: Colors.white,size: 30,),
      ),
    
      title: Text(text,style: TextStyle(color: Colors.white,fontSize: 20),),
    ),
     );
  }
}