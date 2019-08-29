class Category {
  String id;
  String name;
  String image;

  Category(this.id, this.name, this.image);
}

class CategoriesList {
  List<Category> _categoriesList;

  List<Category> get categoriesList => _categoriesList;

  CategoriesList() {
    this._categoriesList = [
      new Category('cat0', 'Rice dishes', 'assets/img/food0.jpg'),
      new Category('cat1', 'Sandwiches', 'assets/img/food1.jpg'),
      new Category('cat2', 'Sausages', 'assets/img/food2.jpg'),
      new Category('cat3', 'Cheeses', 'assets/img/food3.jpg'),
      new Category('cat4', 'Rice dishes', 'assets/img/food4.jpg'),
      new Category('cat5', 'Sandwiches', 'assets/img/food5.jpg'),
      new Category('cat6', 'Bergenost', 'assets/img/food1.jpg'),
      new Category('cat7', 'Desserts', 'assets/img/food3.jpg'),
      new Category('cat8', 'Cream', 'assets/img/food2.jpg'),
      new Category('cat9', 'Cheeses', 'assets/img/food0.jpg'),
    ];
  }
}
