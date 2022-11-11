import 'package:flutter/material.dart';

Widget AnimeCard(String name, String imageURL){
  return Container(
    padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Container(
            height: 150,
            width: 100,
            child: FittedBox(
              alignment: Alignment.center,
              fit: BoxFit.cover,
              child: Image.network(imageURL),
              clipBehavior: Clip.hardEdge,
            ),
          ),
        ),
        Container(
          width: 100,
          height: 26,
          padding: EdgeInsets.only(top: 10),
          child: Text(
            name,
            style: TextStyle(
                color: Colors.white
            ),
            overflow: TextOverflow.visible,
          ),
        ),
      ],
    ),
  );
}