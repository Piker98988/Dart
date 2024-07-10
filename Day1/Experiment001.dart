import 'dart:io';
import 'dart:core';
import 'dart:math';
bool start = true;
bool opMode = true;

void main() {
  while (start) {
    printText1();
    String? response = stdin.readLineSync()!;
    if (valid1(response) == 1) {
      opMode = true;
      while (opMode) {
        printText2();
        String? operation = stdin.readLineSync()!;
        eval(operation);
      }
    } else if (valid1(response) == 0) {
      quit();
    } else {
      stdout.writeln("Enter a valid option.");
    }
  }
}

void eval(String operation) {
  switch (operation.toLowerCase()) {
    case "a":
      add();
    case "s":
      sub();
    case "m":
      mul();
    case "d":
      div();
    case "q":
      back();
    default:
      stdout.write("Enter a valid option.\n");
      return;
  }
}

void back() {
  stdout.write("Going back...\n");
  opMode = false;
}

void div() {
  stdout.write("""Welcome to division mode. Maximum of two numbers. Input:
  Number 1: """);
  double? num1 = double.parse(stdin.readLineSync()!);
  stdout.write("Number 2: ");
  double? num2 = double.parse(stdin.readLineSync()!);
  double result = num1 / num2;
  stdout.write("The result of $num1 / $num2 is $result.\n");
  sleep(Duration(seconds: 1, milliseconds: 500));
  stdout.write("Going back...\n");
}

void sub() {
  stdout.write("""Welcome to substraction mode. Maximum of two numbers. Input:
  Number 1: """);
  double? num1 = double.parse(stdin.readLineSync()!);
  stdout.write("Number 2: ");
  double? num2 = double.parse(stdin.readLineSync()!);
  double result = num1 - num2;
  stdout.write("The result of $num1 - $num2 is $result.\n");
  sleep(Duration(seconds: 1, milliseconds: 500));
  stdout.write("Going back...\n");
}

void mul() {
}

void add() {
}

void printText1() {
  stdout.write("""Welcome to the calculator. Choose:
  m. make an operation
  q. quit
""");
}

void printText2() {
  stdout.write("""Welcome to the operation selection screen. Choose:
  a. add
  s. substract
  m. multiply
  d. divide
  q. quit operation mode
""");
}

int? valid1(String r) {
  if (r == "a") {
    return 1;
  } else if (r == "b"){
    return 0;
  } else {
    return 2;
  }
}

void quit() {
  Map<int, String> statements = {
    11:"[....0%....]",
    10:"[-...10%....]",
    9: "[--..20%....]",
    8: "[---.30%....]",
    7: "[----40%....]",
    6: "[----50%....]",
    5: "[----60%....]",
    4: "[----70%-...]",
    3: "[----80%--..]",
    2: "[----90%---.]",
    1: "[----100%----]"
  };
  stdout.write("Thanks for using calculator!\n");
  var random = Random();
  for (var i = 11; i > 0; i--) {
    sleep(Duration(seconds: random.nextInt(5)));
    stdout.write("Quitting... ${statements[i]}\n");
  }
  stdout.write("Completed!\n");
  start = false;
  exit(0);
}
