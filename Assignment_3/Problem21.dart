enum OrderStatus {
  pending,
  shipped,
  delivered
}

void main() {
  OrderStatus status = OrderStatus.shipped;

  switch (status) {
    case OrderStatus.pending:
      print("Your order is pending.");
      break;

    case OrderStatus.shipped:
      print("Your order has been shipped.");
      break;

    case OrderStatus.delivered:
      print("Your order has been delivered.");
      break;
  }
}