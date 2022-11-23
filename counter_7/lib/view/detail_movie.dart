import 'dart:convert';
import 'package:counter_7/view/movie_data.dart';
import 'package:http/http.dart' as http;

import 'package:flutter/material.dart';
import 'package:counter_7/view/navbar.dart';
import 'package:counter_7/model/mywatchlist.dart';

class DetailMovie extends StatelessWidget {
  final Mywatchlist detailMovie;
  const DetailMovie({
    super.key, required this.detailMovie
    }); // Route ke page detailMovie, maka harus dikasih data dari DataWatchlistnya

    String checkStatus(Watched status) {
    if (status == Watched.YES) {
      return "watched";
    } else {
      return "not watched";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Detail Movie'),
      ),
      drawer: const NavbarApp(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: Text(detailMovie.fields.title,
                style:
                    const TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20, bottom: 10, left: 10),
            child: Row(
              children: [
                const Text("Release Date: ",
                    style:
                        TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                Text(detailMovie.fields.releaseDate,
                    style: const TextStyle(fontSize: 20)),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20, bottom: 10, left: 10),
            child: Row(
              children: [
                const Text("Rating: ",
                    style:
                        TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                Text(detailMovie.fields.rating.toString(),
                    style: const TextStyle(fontSize: 20)),
                const Text("/5", style: TextStyle(fontSize: 20)),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10, bottom: 10, left: 10),
            child: Row(
              children: [
                const Text("Status: ",
                    style:
                        TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                        Text(checkStatus(detailMovie.fields.watched),
                    style: const TextStyle(fontSize: 20)),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20, bottom: 10, left: 10),
            child: Row(
              children: [
                const Text("Review: ",
                    style:
                        TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                Text(detailMovie.fields.review,
                    style: const TextStyle(fontSize: 20)),
               
              ],
            ),
          ),
        ],
      ),
      // persistentFooterButtons: [
      //   ElevatedButton(
      //     style: ElevatedButton.styleFrom(
      //       backgroundColor: Colors.blue,
      //       minimumSize: const Size.fromHeight(40),
      //     ),
      //     onPressed: () {
      //       Navigator.pop(context);
      //     },
      //     child: const Text(
      //       'Back',
      //       style: TextStyle(fontSize: 12),
      //     ),
      //   ),
      // ],

      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: Container(
        height: 50,
        margin: const EdgeInsets.all(10),
        child: ElevatedButton(
          onPressed: () {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                builder: (context) =>
                    const DataWatchlist()));
          },
          child: const Center(
            child: Text('Back'),
          ),
        ),
      ),
    );
  }
}

