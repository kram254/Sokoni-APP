import 'package:cloud_firestore/cloud_firestore.dart';

class  CartItemModel {
  static const ID = "id";
  static const NAME = "name";
  static const IMAGE = "image";
  static const PRODUCT_ID = "productId";
  static const PRICE = "price";
  static const QUANTITY = "quantity";

String _id;
String _name;
String _image;
String _productId;
String _price;
String _quantity;

//the getters
String get id => _id;
String get name => _name;
String get image => _image;
String get productId => _productId;
String get price => _price;
String get quantity => _quantity;

CartItemModel.fromSnapshot(DocumentSnapshot snapshot){
  _id = snapshot.data() [ID];
  _name = snapshot.data() [NAME];
  _image = snapshot.data()[IMAGE];
  _productId = snapshot.data()[PRODUCT_ID];
  _price = snapshot.data()[PRICE];
  _quantity = snapshot.data()[QUANTITY];

}
}