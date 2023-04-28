import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SearchIconButton extends StatefulWidget {
  const SearchIconButton({super.key});

  @override
  State<SearchIconButton> createState() => _SearchIconButtonState();
}

class _SearchIconButtonState extends State<SearchIconButton> {
  @override
  Widget build(BuildContext context) {
   return IconButton(onPressed: (){}, icon: Icon(Icons.search));
  }
}
