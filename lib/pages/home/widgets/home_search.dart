import 'package:flutter/material.dart';

class HomeSearch extends StatelessWidget {
  const HomeSearch({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return  TextField(
        decoration: InputDecoration(
          hintText: "Search ...",
          border: buildOutlineInputBorder(),
          suffixIcon: const Icon(Icons.search),
        ),
    );
  }

  OutlineInputBorder buildOutlineInputBorder() => OutlineInputBorder(
    borderRadius: BorderRadius.circular(10.0),
    borderSide: const BorderSide(
      color: Colors.grey,
    )

  );

}