import 'package:flutter/material.dart';
import 'package:hugo_client/models/content.dart';
import 'package:hugo_client/services/article.dart';

class ArticleList extends StatefulWidget {
  const ArticleList({Key? key}) : super(key: key);

  @override
  State<ArticleList> createState() => _ArticleListState();
}

class _ArticleListState extends State<ArticleList> {
  void initState() {
    Hugo.instance.getArticleList();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: Hugo.instance.getArticleList(),
        builder: ((context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            return ListView.builder(
                itemCount: 6,
                itemBuilder: (BuildContext ctxt, int index) =>
                    itemBuilder(ctxt, index, snapshot.data),
                shrinkWrap: true);
          } else {
            return Text("加载中");
          }
        }));
  }

  Widget itemBuilder(BuildContext context, int index, data) {
    ListItem result = ListItem.fromData(data["keys"], data["values"][index]);
    return Material(child: ArticleListItem(data: result));
  }
}

class ArticleListItem extends StatelessWidget {
  const ArticleListItem({Key? key, required this.data}) : super(key: key);
  final ListItem data;

  @override
  Widget build(BuildContext context) {
    return Text(data.title);
  }
}
