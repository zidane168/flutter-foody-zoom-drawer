import 'package:flutter/material.dart';

class HomeSearch extends StatelessWidget {
  const HomeSearch({super.key});


  OutlineInputBorder buildOutlineInputBorder() => OutlineInputBorder(
      borderSide: const BorderSide(
        color: Colors.grey,
      ),
      borderRadius: BorderRadius.circular(10.0)
  );

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return   TextField(
        decoration: InputDecoration(
          enabledBorder: buildOutlineInputBorder(),
          hintText: "Search ...",
          focusedBorder: buildOutlineInputBorder(),
          suffixIcon: const Icon(Icons.search, color: Colors.blue),
        )
    );
  }

}