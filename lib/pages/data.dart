class StoreProduct {
  final String imageUrl;
  final String productDescription;
  final String price;

  const StoreProduct(this.imageUrl, this.productDescription, this.price);
}

class Data {
  static const List<StoreProduct> products = [
    StoreProduct('https://cdn.salla.sa/Aedxd/FU4D5KgCtf7LLUfFefLeVpCqshDlYRmEapMdjogR.jpg',
        'طارد النمل طبيعي من زيوت عشبية', '27 ر.س'),
    StoreProduct('https://cdn.salla.sa/Aedxd/FU4D5KgCtf7LLUfFefLeVpCqshDlYRmEapMdjogR.jpg',
        'طارد النمل طبيعي من زيوت عشبية', '26 ر.س'),
    StoreProduct('https://cdn.salla.sa/Aedxd/FU4D5KgCtf7LLUfFefLeVpCqshDlYRmEapMdjogR.jpg',
        'طارد النمل طبيعي من زيوت عشبية', '25 ر.س'),
  ];
}

class Cart {
  static List<StoreProduct> cartItems = [];
}
