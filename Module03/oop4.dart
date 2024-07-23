import 'dart:io';

class BankAccount {
  static int createdAccounts = 0;
  // AID => Account ID: constant for the object with a getter to see your AID
  int _AccountID = createdAccounts;
  int get AID => _AccountID;
  // balance => modified through this.deposit() and this.withdraw() with a getter to see your balance
  // the variable is initialized always at 0$
  double _balance = 0.0;
  double get balance => _balance;
  // owner => another constant for the object with a getter
  final String _owner;
  String get owner => _owner;
  // Constructor
  BankAccount(this._owner) {
    createdAccounts += 1;
  }
  // deposit takes an amount and calls the confirmOperation function
  void deposit(double amount) {
    stdout.write("Depositing $amount\$...\n");
    if (this._confirmOperation(1)) {
      _balance += amount;
      stdout.write("$amount\$ have been deposited onto your account!\n");
      return;
    } else {
      stdout.write("Deposit of $amount\$ cancelled.\n");
      return;
    }
  }
  void withdraw(double amount) {
    stdout.write("Withdrawing $amount\$...\n");
    _balance -= amount;
    if (this._confirmOperation(0)) {
      _balance -= amount;
      stdout.write("$amount\$ have been withdrawn from your account!\n");
      return;
    }
    return;
  }

  bool _confirmOperation(int operation) {
    // 0 => withdraw
    // 1 => deposit
    stdout.write("Confirm the operation? (y/n)\n");
    String confirmation = stdin.readLineSync()!;
    switch (confirmation) {
      Start:
      case "y":
        switch (operation) {
          case 0:
            stdout.write("Confirming withdrawal...\n");
            return true;
          case 1:
            stdout.write("Confirming deposit...\n");
            return true;
        }
      case "n":
        switch (operation) {
          case 0:
            stdout.write("Cancelling withdrawal...\n");
            return false;
          case 1:
            stdout.write("Cancelling deposit...\n");
            return false;
        }
      default:
        stdout.write("Not a valid response. Try: y to confirm, n to cancel.\n");
        confirmation = stdin.readLineSync()!;
        continue Start;
    }
    stdout.write("Error. Retry.\n");
    return false;
  }
}

// implement different account types: savings, checking, normal...
// ideas: credit card thing...?
// soon -> project with new features for this bank account thing

void main() {
  BankAccount account = BankAccount("piker");
  BankAccount account1 = BankAccount("piker");
  BankAccount account2 = BankAccount("piker");
  BankAccount account3 = BankAccount("piker");
  stdout.write(account.owner);
  account.deposit(100.0);
  stdout.write(account.balance);
  account.withdraw(99.0);
  stdout.write(account.balance);
  stdout.write("${account.AID}\n");
  stdout.write("${account1.AID}\n");
  stdout.write("${account2.AID}\n");
  stdout.write("${account3.AID}\n");
}
