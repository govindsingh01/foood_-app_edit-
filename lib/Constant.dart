import 'package:flutter/material.dart';

class Restaurants {
  String imageUrl, title, locations, rating, price, discount;

  Restaurants(
      {required this.imageUrl,
      required this.locations,
      required this.price,
      required this.rating,
      required this.title,
      required this.discount});
}

List<Restaurants> restaurantList = [
  Restaurants(
      title: "Diciccos Old Town",
      locations: "North Indian, Chinese",
      price: "100",
      rating: "4.2",
      discount: "50% OFF",
      imageUrl:
          "https://images.unsplash.com/photo-1484723091739-30a097e8f929?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1049&q=80"),
  Restaurants(
    title: "Pista House",
    locations: "North Indian, Mughlai, Kebab",
    price: "300",
    rating: "4.1",
    discount: " 50% OFF",
    imageUrl:
        "https://c.ndtvimg.com/2020-01/a39okhfk_620_625x300_21_January_20.jpg",
  ),
  Restaurants(
    title: "Domino's Pizza",
    locations: "Pizza, Fast Food",
    price: "150",
    rating: "4.1",
    discount: "50% Off",
    imageUrl:
        "https://www.indianhealthyrecipes.com/wp-content/uploads/2015/10/pizza-recipe-1-500x500.jpg",
  ),
  Restaurants(
    title: "MCDonald's",
    locations: "Burger, Fast Food, Beverages",
    price: "150",
    rating: "4.1",
    discount: "50% off",
    imageUrl:
        "https://www.newfoodmagazine.com/wp-content/uploads/mcdonalds.jpg",
  ),
  Restaurants(
    title: "Burger King",
    locations: "Burger, American, Desserts",
    price: "150",
    rating: "4.2",
    discount: "50% OFF",
    imageUrl:
        "https://media1.s-nbcnews.com/j/newscms/2019_21/2870431/190524-classic-american-cheeseburger-ew-207p_d9270c5c545b30ea094084c7f2342eb4.fit-2000w.jpg",
  ),
  Restaurants(
    title: "Haldiram's",
    locations: "North Indian, Mithai, South Indian",
    price: "100",
    rating: "4.0",
    discount: "50% OFF",
    imageUrl:
        "https://media.self.com/photos/5ebd7a636ed447b59b846244/4:3/w_2560%2Cc_limit/snack-plate.jpg",
  ),
];

//searchbar items...........................

final itemss = <Widget>[
  Image.asset(
    'assets/images/Discovery@2x.png',
    color: Colors.black,
    width: 30,
  ),
  Image.asset(
    'assets/images/Star@3x.png',
    color: Colors.black,
    width: 30,
  ),
  Image.asset(
    'assets/images/Vector@3x.png',
    color: Colors.black,
    width: 30,
  ),
  Icon(
    Icons.person,
    size: 30,
  )
];

//comparisonPage.............

class DeliveryPartners {
  String name, amount;

  DeliveryPartners({required this.name, required this.amount});
}

List<DeliveryPartners> deliveryList = [
  DeliveryPartners(name: "DoorDash", amount: '\$100'),
  DeliveryPartners(name: "GrubHub", amount: '\$125'),
  DeliveryPartners(name: "Seamless", amount: '\$128'),
  DeliveryPartners(name: "Uber Eats", amount: '\$140'),
  DeliveryPartners(name: "Zomato", amount: '\$180'),
  DeliveryPartners(name: "Swiggy", amount: '\$200'),
];

//RestaurantMenu cart list.............

class MenuCartItems {
  String name, amount, image;

  MenuCartItems(
      {required this.name, required this.amount, required this.image});
}

List<MenuCartItems> menuCartList = [
  MenuCartItems(
      name: "Fried Rice", amount: '\$100', image: "assets/images/pizzaa.png"),
  MenuCartItems(
      name: "Joll of Rice", amount: '\$125', image: "assets/images/foood.png"),
  MenuCartItems(
      name: "Noodles", amount: '\$120', image: "assets/images/pizzaa.png"),
  MenuCartItems(
      name: "Joll of Rice", amount: '\$125', image: "assets/images/foood.png"),
  MenuCartItems(
      name: "Fried Rice", amount: '\$100', image: "assets/images/pizzaa.png"),
];
