import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../models/cart_model.dart';

class CheckoutPage extends StatelessWidget {
  const CheckoutPage({super.key});

  @override
  Widget build(BuildContext context) {
    final cart = context.read<CartModel>();

    return Scaffold(
      appBar: AppBar(title: const Text("Pembayaran")),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            cart.clearCart();
            showDialog(
              context: context,
              builder: (_) => AlertDialog(
                title: const Text("Transaksi Anda Berhasil! 🎉"),
                content: const Text("Terima kasih telah berbelanja di Nabdaff Official Store :)"),
                actions: [
                  TextButton(
                    onPressed: () {
                      Navigator.pop(context);
                      Navigator.pop(context);
                    },
                    child: const Text("OK"),
                  )
                ],
              ),
            );
          },
          child: const Text("Konfirmasi Pembayaran"),
        ),
      ),
    );
  }
}