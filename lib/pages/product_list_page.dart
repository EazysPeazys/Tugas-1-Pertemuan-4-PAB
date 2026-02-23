import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:intl/intl.dart';
import '../models/product.dart';
import '../models/cart_model.dart';

class ProductListPage extends StatefulWidget {
  const ProductListPage({super.key});

  @override
  State<ProductListPage> createState() => _ProductListPageState();
}

class _ProductListPageState extends State<ProductListPage> {
  final formatCurrency =
      NumberFormat.currency(locale: 'id_ID', symbol: 'Rp ', decimalDigits: 0);

  String searchQuery = "";
  String selectedCategory = "All";

  final List<Product> products = [
    Product(
      id: "1",
      name: "Nike Air Jordan",
      price: 2100000,
      category: "Fashion",
      image: "assets/Sepatu.jpg",
    ),
    Product(
      id: "2",
      name: "IPhone 17 Pro Max",
      price: 25000000,
      category: "Electronics",
      image: "assets/Iphone.jpg",
    ),
    Product(
      id: "3",
      name: "Asus ROG Strix G15",
      price: 40500000,
      category: "Electronics",
      image: "assets/Laptop.jpg",
    ),
    Product(
      id: "4",
      name: "Audi R8 V10 GT",
      price: 6500000000,
      category: "Car",
      image: "assets/Mobil.jpg",
    ),
    Product(
      id: "5",
      name: "Logam Mulia Antam 100 Gram",
      price: 297000000,
      category: "Gold",
      image: "assets/Emas.jpg",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    final filtered = products.where((product) {
      final matchSearch =
          product.name.toLowerCase().contains(searchQuery.toLowerCase());
      final matchCategory =
          selectedCategory == "All" || product.category == selectedCategory;
      return matchSearch && matchCategory;
    }).toList();

    return Scaffold(
      appBar: AppBar(title: const Text("Produk/Barang")),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8),
            child: TextField(
              decoration: const InputDecoration(
                hintText: "Cari produk...",
                prefixIcon: Icon(Icons.search),
                border: OutlineInputBorder(),
              ),
              onChanged: (value) => setState(() => searchQuery = value),
            ),
          ),
          Expanded(
            child: GridView.builder(
              padding: const EdgeInsets.all(10),
              gridDelegate:
                  const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 0.7,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
              ),
              itemCount: filtered.length,
              itemBuilder: (context, index) {
                final product = filtered[index];

                return Card(
                  elevation: 5,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15)),
                  child: Column(
                    children: [
                      ClipRRect(
                        borderRadius: const BorderRadius.vertical(
                            top: Radius.circular(15)),
                        child: Image.asset(
                          product.image,
                          height: 120,
                          width: double.infinity,
                          fit: BoxFit.cover,
                        ),
                      ),
                      const SizedBox(height: 8),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8),
                        child: Text(
                          product.name,
                          textAlign: TextAlign.center,
                          style: const TextStyle(
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      Text(formatCurrency.format(product.price)),
                      const Spacer(),
                      ElevatedButton(
                        onPressed: () {
                          context.read<CartModel>().addToCart(product);
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                              content: Text(
                                  "${product.name} Masuk ke keranjang"),
                            ),
                          );
                        },
                        child: const Text("Beli"),
                      ),
                      const SizedBox(height: 8),
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}