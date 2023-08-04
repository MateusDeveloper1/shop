import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shop/components/app_drawer.dart';
import 'package:shop/components/order.dart';
import 'package:shop/model/order_list.dart';

class OrdersPage extends StatelessWidget {
  const OrdersPage({super.key});

  @override
  Widget build(BuildContext context) {
    final OrderList orders = Provider.of(context);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.primary,
        foregroundColor: Colors.white,
        title: const Text("Meus Pedidos"),
      ),
      drawer: const AppDrawer(),
      body: ListView.builder(
        itemCount: orders.itemCount,
        itemBuilder: (context, index) => OrderWidget(
          order: orders.items[index],
        ),
      ),
    );
  }
}
