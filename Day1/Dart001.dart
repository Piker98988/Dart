import "dart:io";

main() {
  String? user;
  stdout.write("Input your name: ");
  user = stdin.readLineSync();
  if (user != "") {
    stdout.writeln("Hello, $user");
  } else {
    stdout.writeln("Hello, stranger");
  }

}
