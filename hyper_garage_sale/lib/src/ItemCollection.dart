class ItemCollection {
  String itemName, price, description, postDate, username;
  List<dynamic> imageUrlList;

  ItemCollection(this.itemName, this.price, this.username, this.description,
      this.imageUrlList, this.postDate);
}
