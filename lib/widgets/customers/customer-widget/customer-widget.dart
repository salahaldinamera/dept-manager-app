import 'package:dept_manager/models/customer.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomerWidget extends StatelessWidget {
  final Customer customer;

  const CustomerWidget({required this.customer});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: FlutterLogo(size: 56.0),
        title: Text(customer.name),
        subtitle: Text(customer.mobileNumber),
        trailing: Text(
            customer.balance.toString() + "  ₪",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24, color: customer.balance<0?Colors.red:Colors.green),
        ),
      ),
    );
  }
}