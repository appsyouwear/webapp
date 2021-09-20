import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_markdown/flutter_markdown.dart';

import 'package:flutter/services.dart';class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter Markdown"),
      ),
      body: FutureBuilder(
        future: rootBundle.loadString("hello.md"),
        builder: (BuildContext context, AsyncSnapshot<String> snapshot) {
          if(snapshot.hasData) {
            return Markdown(
              data: snapshot.data.toString()
            );
          }
          return Center(
            child: CircularProgressIndicator(),
          );
        },
      ),
    );
  }

}