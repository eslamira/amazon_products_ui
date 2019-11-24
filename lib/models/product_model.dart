class ProductModel {
  String id;
  String title;
  String description;
  String imgUrl;
  String productLink;

  ProductModel.fromMap(this.id, Map m)
      : this.title = m['title'],
        this.description = m['description'],
        this.imgUrl = m['imgUrl'],
        this.productLink = m['productLink'];
}
