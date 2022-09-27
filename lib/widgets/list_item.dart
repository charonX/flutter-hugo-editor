import 'package:flutter/material.dart';
import 'package:hugo_client/models/content.dart';

class ArticleList extends StatefulWidget {
  const ArticleList({Key? key}) : super(key: key);

  @override
  State<ArticleList> createState() => _ArticleListState();
}

class _ArticleListState extends State<ArticleList> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: 100, itemBuilder: itemBuilder, shrinkWrap: true);
  }

  Widget itemBuilder(BuildContext context, int index) {
    return Material(child: ListTile(title: Text("$index")));
  }
}

class ArticleListItem extends StatelessWidget {
  const ArticleListItem({Key? key, required this.data}) : super(key: key);
  final ListItem data;

  @override
  Widget build(BuildContext context) {
    return Text("abc");
  }
}
