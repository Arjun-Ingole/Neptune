import 'package:flutter/material.dart';
import 'package:neptune/Models/model.dart';
import 'package:neptune/Services/service.dart';
import 'package:neptune/Widgets/AnimeCard.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF111015),
      body: Container(
        child: FutureBuilder(
          future: getTopAnimeList(),
          builder: (context, AsyncSnapshot<List<TopAiringAnime>> snapshot){
            return ListView.builder(
              scrollDirection: Axis.horizontal,
                itemCount: TopList.length, itemBuilder: (context, index){
              return AnimeCard(snapshot.data![index].animeTitle.toString(), snapshot.data![index].animeImg.toString());
            }
            );
          },
        ),
      ),
    );
  }
}

