// ignore_for_file: prefer_typing_uninitialized_variables

class CartItemModel {
  final index;
  final imagePath;
  final itemTitle;
  final itemPrice;
  final itemQty;

  CartItemModel({
    required this.index,
    required this.imagePath,
    required this.itemTitle,
    required this.itemPrice,
    required this.itemQty,
  });
}

List<CartItemModel> itemsInCart = [
  CartItemModel(
    index: 0,
    imagePath: 'assets/images/dish-2.jpg',
    itemTitle: 'Platillo Example',
    itemPrice: '155.00',
    itemQty: '2',
  ),
  CartItemModel(
    index: 1,
    imagePath: 'assets/images/dish-1.jpg',
    itemTitle: 'Platillo Example',
    itemPrice: '155.00',
    itemQty: '2',
  ),
];
