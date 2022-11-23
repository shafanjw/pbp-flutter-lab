// To parse this JSON data, do
//
//     final mywatchlist = mywatchlistFromJson(jsonString);

import 'dart:convert';

List<Mywatchlist> mywatchlistFromJson(String str) => List<Mywatchlist>.from(json.decode(str).map((x) => Mywatchlist.fromJson(x)));

String mywatchlistToJson(List<Mywatchlist> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Mywatchlist {
    Mywatchlist({
      required this.model,
      required this.pk,
      required this.fields,
    });

    Model model;
    int pk;
    Fields fields;

    factory Mywatchlist.fromJson(Map<String, dynamic> json) => Mywatchlist(
        model: modelValues.map[json["model"]]!,
        pk: json["pk"],
        fields: Fields.fromJson(json["fields"]),
    );

    Map<String, dynamic> toJson() => {
        "model": modelValues.reverse[model],
        "pk": pk,
        "fields": fields.toJson(),
    };
}

class Fields {
    Fields({
        required this.title,
        required this.watched,
        required this.releaseDate,
        required this.rating,
        required this.review,
    });

    String title;
    Watched watched;
    String releaseDate;
    int rating;
    String review;

    factory Fields.fromJson(Map<String, dynamic> json) => Fields(
        title: json["title"],
        watched: watchedValues.map[json["watched"]]!,
        releaseDate: json["release_date"],
        rating: json["rating"],
        review: json["review"],
    );

    Map<String, dynamic> toJson() => {
        "title": title,
        "watched": watchedValues.reverse[watched],
        "release_date": releaseDate,
        "rating": rating,
        "review": review,
    };
}

enum Watched { YES, NO }

final watchedValues = EnumValues({
    "NO": Watched.NO,
    "YES": Watched.YES
});

enum Model { MYWATCHLIST_MYWATCHLIST }

final modelValues = EnumValues({
    "mywatchlist.mywatchlist": Model.MYWATCHLIST_MYWATCHLIST
});

class EnumValues<T> {
    late Map<String, T> map;
    late Map<T, String> reverseMap;

    EnumValues(this.map);

    Map<T, String> get reverse {
        if (reverseMap == null) {
            reverseMap = map.map((k, v) => new MapEntry(v, k));
        }
        return reverseMap;
    }
}
