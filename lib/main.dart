import 'package:flutter/material.dart';
import 'package:network_layer/providers/album_details_provider.dart';
import 'package:network_layer/views/home_page.dart';
import 'package:provider/provider.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(                                 
      providers: [
        ChangeNotifierProvider<AlbumDetailsProvider>(create: (context) => AlbumDetailsProvider()),
      ],
      child: MaterialApp(
          theme: ThemeData(
            brightness: Brightness.light,
          ),
          home: HomePage()),
    );
  }
}