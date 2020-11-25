import 'package:cloud_firestore/cloud_firestore.dart';

// ignore: camel_case_types
class  ProductModel {
  static const ID = "id";
  static const NAME = "name";
  static const PRICE = "price";
  static const RATING = "rating";
  static const IMAGE = "image";
  static const RATES = "rates";
  static const RESTAURANT_ID = "restaurantId";
  static const RESTAURANT = "restaurant";
  static const CATEGORY = "category";
  static const FEATURED = "featured";

String _id;
String _name;
double _price;
double _rating;
String _image;
String _restaurantId;
String _restaurant;
String _category;
String _featured;
int _rates;



//the getters
String get id => _id;
String get name => _name;
double get avgPrice => _price;
double get rating => _rating;
String get image => _image;
String get restaurantId => _restaurantId;
String get restaurant => _restaurant;
String get category => _category;
String get featured => _featured;
int get rates => _rates;

ProductModel.fromSnapshot(DocumentSnapshot snapshot){
  _id = snapshot.data() [ID];
  _name = snapshot.data() [NAME];
  _price = snapshot.data()[PRICE];
  _rating= snapshot.data()[RATING];
  _image = snapshot.data()[IMAGE];
  _restaurantId = snapshot.data()[RESTAURANT_ID];
  _restaurant = snapshot.data()[RESTAURANT];
  _category = snapshot.data()[CATEGORY];
  _featured = snapshot.data()[FEATURED];
  _rates = snapshot.data()[RATES];
}

  
}