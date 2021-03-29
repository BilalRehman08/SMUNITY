import 'dart:convert';
import 'package:http/http.dart' as http;
import 'events_model.dart';

Future<EventsModel> fetchAlbum() async {
  final response =
      await http.get(Uri.parse('http://165.22.11.70:8000/events/'));

  if (response.statusCode == 200) {
    // If the server did return a 200 OK response,
    // then parse the JSON.
    print(response.body);
    return EventsModel.fromJson(jsonDecode(response.body));
  } else {
    // If the server did not return a 200 OK response,
    // then throw an exception.
    throw Exception('Failed to load album');
  }
}


