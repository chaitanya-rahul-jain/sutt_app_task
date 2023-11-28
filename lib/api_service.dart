import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'dart:convert';

Future getCountryDb([String? namePrefix]) async {
  namePrefix ??= '';

  final String request =
      'https://wft-geo-db.p.rapidapi.com/v1/geo/countries?namePrefix=$namePrefix&languageCode=EN';

  var response = await get(
    Uri.parse(request),
    headers: {
      'x-rapidapi-host': 'wft-geo-db.p.rapidapi.com',
      'x-rapidapi-key': ' ',
    },
  );

  if (response.statusCode == 200) {
    var jsonResponse = jsonDecode(response.body);
    var data = jsonResponse['data'];

    final List countries = [];

    data.forEach(
      (myData) {
        countries.add([myData['code'], myData['name']]);
      },
    );

    return countries;
  } else {
    print('getCityDB() Request failed with status: ${response.statusCode}.');
  }
}

// void main() {
//   Future Countries = getCountryDb();

//   FutureBuilder(
//     future: Countries,
//     builder: (context, snapshot) {
//       if (snapshot.hasData) {
//         return snapshot.data;
//       } else if (snapshot.hasError) {
//         return snapshot.error;
//       }

//       // By default, show a loading spinner.
//       return 'hello';
//     },
//   );
// }
