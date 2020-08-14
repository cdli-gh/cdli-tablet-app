import 'package:flutter/material.dart';
import 'package:cdli_tablet_app/models/list_model.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';

class ListScreen extends StatefulWidget {
  @override
  _ListScreenState createState() => _ListScreenState();
}

class _ListScreenState extends State<ListScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        iconTheme: new IconThemeData(color: Colors.white),
        title: Text(
          'cdli tablet',
          style: TextStyle(color: Colors.white, fontFamily: 'NotoSansJP',
            fontWeight: FontWeight.w400,),
        ),
        backgroundColor: Color.fromRGBO(18, 18, 18, 1),
        leading: PlatformIconButton(
          android: (_) => MaterialIconButtonData(icon: Icon(Icons.arrow_back, color: Colors.white,)),
          ios: (_) => CupertinoIconButtonData(icon: Icon(Icons.arrow_back_ios, color: Colors.white,)),
          onPressed: () => Navigator.of(context).pop(),
        ),
      ),
      body: ListModel(),
    );
  }
}
