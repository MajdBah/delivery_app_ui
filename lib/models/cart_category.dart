class CartCategoryModel {
  final index;
  final imagePath;
  final categoryTitle;

  CartCategoryModel({
    required this.index,
    required this.imagePath,
    required this.categoryTitle,
  });
}

List<CartCategoryModel> categoryList = [
  CartCategoryModel(
    index: 0,
    imagePath: 'assets/images/burger.png',
    categoryTitle: 'Burger',
  ),
  CartCategoryModel(
    index: 1,
    imagePath: 'assets/images/carne.png',
    categoryTitle: 'Carne',
  ),
  CartCategoryModel(
    index: 2,
    imagePath: 'assets/images/postres.png',
    categoryTitle: 'Postres',
  ),
  CartCategoryModel(
    index: 3,
    imagePath: 'assets/images/sopa.png',
    categoryTitle: 'Sopa',
  ),
  CartCategoryModel(
    index: 4,
    imagePath: 'assets/images/sopa-2.png',
    categoryTitle: 'Sopa',
  ),
  CartCategoryModel(
    index: 5,
    imagePath: 'assets/images/burger.png',
    categoryTitle: 'Burger',
  ),
];
