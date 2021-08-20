import 'dart:io';

main(List<String> args) {
  var s1 = stdin.readLineSync()!.split('');
  var s2 = stdin.readLineSync()!.split('');
  s1.sort();
  s2.sort();
  var equals = true;
  for (var i = 0; i < s1.length; i++) {
    if (s1[i] != s2[i]) {
      equals = false;
    }
  }
  print(equals);
}
