import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../models/cart_model.dart';

class CheckoutPage extends StatefulWidget {
  const CheckoutPage({super.key});

  @override
  State<CheckoutPage> createState() => _CheckoutPageState();
}

class _CheckoutPageState extends State<CheckoutPage> {
  final _formKey = GlobalKey<FormState>();

  final nameController = TextEditingController();
  final phoneController = TextEditingController();
  final addressController = TextEditingController();

  String paymentMethod = "Transfer Bank";

  @override
  Widget build(BuildContext context) {
    final cart = context.watch<CartModel>();
    final total = cart.totalPrice;

    return Scaffold(
      appBar: AppBar(title: const Text("Checkout")),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              /// ===== RINGKASAN PESANAN =====
              const Text(
                "Ringkasan Pesanan",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 10),

              Container(
                padding: const EdgeInsets.all(14),
                decoration: BoxDecoration(
                  color: Colors.grey.shade100,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text("Total Belanja"),
                        Text(
                          "Rp ${total.toStringAsFixed(0)}",
                          style: const TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 16),
                        ),
                      ],
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 25),

              /// ===== DATA PEMBELI =====
              const Text(
                "Data Pembeli",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 10),

              TextFormField(
                controller: nameController,
                decoration: const InputDecoration(
                  labelText: "Nama Lengkap",
                  border: OutlineInputBorder(),
                ),
                validator: (value) =>
                    value!.isEmpty ? "Nama wajib diisi" : null,
              ),

              const SizedBox(height: 15),

              TextFormField(
                controller: phoneController,
                keyboardType: TextInputType.phone,
                decoration: const InputDecoration(
                  labelText: "Nomor HP",
                  border: OutlineInputBorder(),
                ),
                validator: (value) =>
                    value!.isEmpty ? "Nomor HP wajib diisi" : null,
              ),

              const SizedBox(height: 15),

              TextFormField(
                controller: addressController,
                maxLines: 3,
                decoration: const InputDecoration(
                  labelText: "Alamat Lengkap",
                  border: OutlineInputBorder(),
                ),
                validator: (value) =>
                    value!.isEmpty ? "Alamat wajib diisi" : null,
              ),

              const SizedBox(height: 25),

              /// ===== METODE PEMBAYARAN =====
              const Text(
                "Metode Pembayaran",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),

              RadioListTile(
                title: const Text("Transfer Bank"),
                value: "Transfer Bank",
                groupValue: paymentMethod,
                onChanged: (value) =>
                    setState(() => paymentMethod = value.toString()),
              ),
              RadioListTile(
                title: const Text("E-Wallet"),
                value: "E-Wallet",
                groupValue: paymentMethod,
                onChanged: (value) =>
                    setState(() => paymentMethod = value.toString()),
              ),
              RadioListTile(
                title: const Text("COD (Bayar di Tempat)"),
                value: "COD",
                groupValue: paymentMethod,
                onChanged: (value) =>
                    setState(() => paymentMethod = value.toString()),
              ),

              const SizedBox(height: 30),

              /// ===== BUTTON =====
              SizedBox(
                width: double.infinity,
                height: 50,
                child: ElevatedButton(
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      cart.clearCart();

                      showDialog(
                        context: context,
                        builder: (_) => AlertDialog(
                          title: const Text("Transaksi Berhasil 🎉"),
                          content: Text(
                              "Terima kasih ${nameController.text} telah berbelanja di Nabdaff Official Store!\n\nMetode Pembayaran: $paymentMethod"),
                          actions: [
                            TextButton(
                              onPressed: () {
                                Navigator.pop(context);
                                Navigator.pop(context);
                              },
                              child: const Text("Selesai"),
                            )
                          ],
                        ),
                      );
                    }
                  },
                  child: const Text("Konfirmasi Pembayaran"),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
