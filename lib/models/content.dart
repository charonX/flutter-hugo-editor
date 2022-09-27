class ListItem {
  String title;
  String time;
  bool isDraft;

  ListItem({required this.title, required this.time, required this.isDraft});

  ListItem.fromJson(Map<String, dynamic> json)
      : title = json["title"],
        time = json["time"],
        isDraft = json["isDraft"];

  ListItem.fromData(List keys, List values)
      : title = values[keys.indexOf("title")],
        time = values[keys.indexOf("publishDate")],
        isDraft = values[keys.indexOf("draft")] == "true";
}
