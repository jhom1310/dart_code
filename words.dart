import 'dart:io';

main(List<String> args) {
  String? string = stdin.readLineSync();
  var words = string!.split(" ");
  var countlist = new Map<String, int>();
  for (var item in words) {
    if (countlist[item] != null) {
      countlist[item] = countlist[item]!.toInt() + 1;
    } else
      countlist[item] = 1;
  }
  print(words);
  print(countlist);
}
