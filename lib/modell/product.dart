class Product{

  late String name;
  late String imageUrl;
  late double price;

  Product({required this.name, required this.imageUrl, required this.price});
}

List<Product> products = [
  Product(name: 'Avocados', imageUrl: 'images/avocado.png', price: 100.0),
  Product(name: 'banana', imageUrl: 'images/banana.png', price: 50.0),
  Product(name: 'Chicken', imageUrl: 'images/chicken.png', price: 200.0),
  Product(name: 'Water', imageUrl: 'images/water.png', price: 20.0),
  Product(name: 'Avocados', imageUrl: 'images/avocado.png', price: 100.0),
  Product(name: 'banana', imageUrl: 'images/banana.png', price: 50.0),
];