class BankAccount {
  double _balance = 0;

  double get balance {
    return _balance;
  }

  set balance(double amount) {
    if (amount >= 0) {
      _balance = amount;
    } else {
      print("Balance cannot be negative.");
    }
  }
}

void main() {
  BankAccount account = BankAccount();

  account.balance = 5000;

  print("Balance: ${account.balance}");

  account.balance = -1000;
}