import 'dart:convert';

import 'package:neptune/Models/model.dart';
import 'package:http/http.dart' as http;

List<TopAiringAnime> TopList = [];

Future<List<TopAiringAnime>> getTopAnimeList()async{
  final response = await http.get(Uri.parse("https://gogoanime.consumet.org/top-airing"));
  var data = jsonDecode(response.body.toString());
  if(response.statusCode == 200){
    for(Map i in data){
      TopList.add(TopAiringAnime.fromJson(i));
    }
    return TopList;
  } else {
    print("Failed to Fetch Data");
    return TopList;
  }
}