import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DrawerIconButton extends StatefulWidget{
  const DrawerIconButton({super.key});

  @override
  State<DrawerIconButton> createState() => _DrawerIconButtonState();
}

class _DrawerIconButtonState extends State<DrawerIconButton> {
  @override
  Widget build(BuildContext context) {
    return IconButton(onPressed: (){}, icon: Icon(Icons.menu));
  }
}