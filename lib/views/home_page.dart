import 'package:flutter/material.dart';
import 'package:network_layer/providers/album_details_provider.dart';
import 'package:provider/provider.dart';
import 'package:network_layer/network_module/api_response.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Network Layer With Provider')),
        body: Container(
            padding: const EdgeInsets.all(20), child: albumTitle(context)),
      ),
    );
  }

  Widget albumTitle(BuildContext context) {
    return Consumer<AlbumDetailsProvider>(builder: (context, myModel, child) {
      if (myModel.album.status == Status.COMPLETED) {
        return Text("${myModel.album.data.title}");
      } else if (myModel.album.status == Status.ERROR) {
        return Text("Error : ${myModel.album.message}");
      } else {
        return Text("${myModel.album.message}");
      }
    });
  }
}
