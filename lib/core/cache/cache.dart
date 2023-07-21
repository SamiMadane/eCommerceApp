class CacheData {
  static int id = 1;
  static int indexProduct = 0;
  static String name = "";
  static String image = "";
  static String price = "";


  void setIndex(int value) {
    CacheData.indexProduct = value;
  }

  int getIndex() {
    return indexProduct;
  }

  void setID(int value) {
    CacheData.id = value;
  }

  int getID() {
    return id;
  }

  void setName(String value) {
    CacheData.name = value;
  }

  String getName() {
    return name;
  }

  void setImage(String value) {
    CacheData.image = value;
  }

  String getImage() {
    return image;
  }

  void setPrice(String value) {
    CacheData.price = value;
  }

  String getPrice() {
    return price;
  }

  // void setStars(int value) {
  //   CacheData.stars = value;
  // }
  //
  // int getStars() {
  //   return stars;
  // }
}
