import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_files/models/product.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'products_provider.g.dart'; // dart run build_runner watch就會產生這個檔案

const List<Product> allProducts = [
  Product(
      id: '1',
      title: 'Groovy Shorts',
      price: 12,
      image: 'assets/products/shorts.png'),
  Product(
      id: '2',
      title: 'Karati Kit',
      price: 34,
      image: 'assets/products/karati.png'),
  Product(
      id: '3',
      title: 'Denim Jeans',
      price: 54,
      image: 'assets/products/jeans.png'),
  Product(
      id: '4',
      title: 'Red Backpack',
      price: 14,
      image: 'assets/products/backpack.png'),
  Product(
      id: '5',
      title: 'Drum & Sticks',
      price: 29,
      image: 'assets/products/drum.png'),
  Product(
      id: '6',
      title: 'Blue Suitcase',
      price: 44,
      image: 'assets/products/suitcase.png'),
  Product(
      id: '7',
      title: 'Roller Skates',
      price: 52,
      image: 'assets/products/skates.png'),
  Product(
      id: '8',
      title: 'Electric Guitar',
      price: 79,
      image: 'assets/products/guitar.png'),
];

// final productsProvider = Provider((ref) {
//   return allProducts;
// });

// final reducedProductProvider = Provider((ref) {
//   return allProducts.where((p) => p.price < 50);
// });

// generated provider
// 安裝flutter pub add riverpod_annotation: 用來建立一個provider
// flutter pub add dev:riverpod_generator
// readonly
@riverpod
List<Product> products(ref) {
  return allProducts;
}

// flutter pub add dev:build_runner
// dart run build_runner watch: 重新製造出g.dart檔案
// 取代前面的productsProvider

@riverpod
List<Product> reducedProduct(ref) {
  return allProducts.where((p) => p.price < 50).toList();
}
