import 'package:flutter/material.dart';

void slideTransition(BuildContext context,Widget page){
  Navigator.push(context, PageRouteBuilder(pageBuilder: (context,animation,secondaryAnimation)=>page,
  transitionsBuilder: (context, animation, secondaryAnimation, child) {
    const begin = Offset(0.0, 1.0);
    const end = Offset.zero;
    const curve = Curves.easeInOut;
    var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));
    var offsetAnimation = animation.drive(tween);
    return SlideTransition(position: offsetAnimation,child: child,);
  },
  
  ));
}