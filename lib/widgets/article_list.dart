import 'package:flutter/material.dart';

class ArticleList extends StatefulWidget {
  const ArticleList({Key? key}) : super(key: key);

  @override
  State<ArticleList> createState() => _ArticleListState();
}

class _ArticleListState extends State<ArticleList> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(itemCount: 100, itemBuilder: itemBuilder);
  }

  Widget itemBuilder(BuildContext context, int index) {
    return ListTile(title: Text("$index"));
  }
}
