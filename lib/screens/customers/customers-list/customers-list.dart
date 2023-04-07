import 'package:dept_manager/models/customer.dart';
import 'package:dept_manager/widgets/customers/customer-widget/customer-widget.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:dept_manager/l10n/locale_keys.g.dart';
import 'package:dept_manager/main.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomersList extends StatefulWidget {
  @override
  _CustomersListState createState() => _CustomersListState();
}

class _CustomersListState extends State<CustomersList> {
  TextEditingController editingController = TextEditingController();

  final duplicateItems = List<Customer>.generate(10000, (i) => Customer("Customer $i", "$i", i));

  var items = List<Customer>.empty(growable: true);

  @override
  void initState() {
    items.addAll(duplicateItems);
    super.initState();
  }


  void filterSearchResults(String query) {
    List<Customer> dummySearchList = List<Customer>.empty(growable: true);
    dummySearchList.addAll(duplicateItems);
    if(query.isNotEmpty) {
      List<Customer> dummyListData = List<Customer>.empty(growable: true);
      dummySearchList.forEach((item) {
        if(item.name.contains(query)) {
          dummyListData.add(item);
        }
      });
      setState(() {
        items.clear();
        items.addAll(dummyListData);
      });
      return;
    } else {
      setState(() {
        items.clear();
        items.addAll(duplicateItems);
      });
    }

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("Customers List"),),
      backgroundColor: Colors.white,
      body: Container(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                onChanged: (value) {
                  filterSearchResults(value);
                },
                // controller: editingController,
                decoration: InputDecoration(
                    labelText: "Search",
                    hintText: "Search",
                    prefixIcon: Icon(Icons.search),
                    border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(50.0)))
                ),
              ),
            ),
            Expanded(
                child: ListView.builder(
                    itemCount: items.length,
                    itemBuilder: (context, index) {
                      return CustomerWidget(customer: items[index]);
                    }
                )
            )
          ],
        ),
      )
    );
  }
}