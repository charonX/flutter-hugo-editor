import 'dart:io';

class Hugo {
  static Hugo get instance => Hugo();
  Future<Map<String, List>> getArticleList() async {
    const workingDirectory = "/Users/zhanglei/code/blog";

    var processOut = await Process.run("/usr/local/bin/hugo", ["list", "all"],
        workingDirectory: workingDirectory);

    String list = processOut.stdout;
    String error = processOut.stderr;

    var result = <String, List>{};
    result["values"] = <List>[];
    List<String> item = list.trim().split("\n");
    for (int i = 0; i < item.length; i++) {
      if (i == 0) {
        result["keys"] = item[i].split(",");
      } else {
        result["values"]!.add(item[i].split(","));
      }
    }

    return result;
  }
}
