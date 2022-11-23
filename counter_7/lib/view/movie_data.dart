import 'dart:convert';
import 'package:http/http.dart' as http;

import 'package:flutter/material.dart';
import 'package:counter_7/view/navbar.dart';
import 'package:counter_7/view/detail_movie.dart';
import 'package:counter_7/model/mywatchlist.dart';

class DataWatchlist extends StatefulWidget {
  const DataWatchlist({super.key});

  @override
  State<DataWatchlist> createState() => _DataWatchlistState();
}

class _DataWatchlistState extends State<DataWatchlist> {
  Future<List<Mywatchlist>> fetchToDo() async {
    var url = Uri.parse(
        'https://shafawatchlist.herokuapp.com/mywatchlist/json/');
    var response = await http.get(
      url,
      headers: {
        "Access-Control-Allow-Origin": "*",
        "Content-Type": "application/json",
      },
    );

    // melakukan decode response menjadi bentuk json
    var data = jsonDecode(utf8.decode(response.bodyBytes));

    // melakukan konversi data json menjadi object ToDo
    List<Mywatchlist> listToDo = [];
    for (var d in data) {
      if (d != null) {
        listToDo.add(Mywatchlist.fromJson(d));
      }
    }

    return listToDo;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Data Watchlist'),
      ),
      drawer: const NavbarApp(),
        body: FutureBuilder(
            future: fetchToDo(),
            builder: (context, AsyncSnapshot snapshot) {
              if (snapshot.data == null) {
                return const Center(child: CircularProgressIndicator());
              } else {
                if (!snapshot.hasData) {
                  return Column(
                    children: const [
                      Text(
                        "Tidak ada to do list :(",
                        style:
                            TextStyle(color: Color(0xff59A5D8), fontSize: 20),
                      ),
                      SizedBox(height: 8),
                    ],
                  );
                } else {
                  return ListView.builder(
                      itemCount: snapshot.data!.length,
                      itemBuilder: (_, index) => Container(
                            margin: const EdgeInsets.symmetric(
                                horizontal: 16, vertical: 12),
                            padding: const EdgeInsets.all(20.0),
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(15.0),
                                boxShadow: const [
                                  BoxShadow(
                                      color: Colors.black, blurRadius: 2.0)
                                ]),
                            child: ListTile(
                              title: Text(
                                  "${snapshot.data![index].fields.title}",
                                  style: const TextStyle(
                                    fontSize: 18.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              onTap: () {
                                Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) =>
                                        DetailMovie(detailMovie: snapshot.data![index])));
                              },
                            ),
                          ));
                }
              }
            })
    );
  }
}
