String accountNameData = "Default Account";
String accountEmailData = "example@mail.com";

String street = "N/A";
String city = "N/A";
String state = "N/A";
String zip = "N/A";

String creditNum = "XXXX XXXX XXXX XXXX";
String creditDate = "MM/YYYY";
String ccv = "CVV";

// add favorite list
// add history list

getAccountNameData () {
  return accountNameData;
}
setAccountNameData (String tmp) {
  accountNameData = tmp;
}

getAccountEmailData () {
  return accountEmailData;
}
setAccountEmailData (String tmp) {
  accountEmailData = tmp;
}

final List<String> restaurants = <String>[
  "Bob's Burgers",
  'Bravo Kitchen',
  'Brazil Grill',
  'Chicken-To-Go',
  "Chuck's Dinner",
  'Korean BBQ',
  'Tacos de Pancho',
];

final List<String> restaurantDescription = <String>[
  "Home of the infamous Ben Franklin Burger.",
  'Neighborhood pizzeria with the freshest ingredients. The Bravo style  ...',
  '12 different style of meats with customizable salad options...',
  'Anything chicken: chicken sandwiches, chicken tenders and nuggets... ',
  "Classic Dinner, serving all day breakfast, unlimited coffee refills ...",
  'Korean BBQ & other traditional Korean dishes.',
  "Proudly established in 1991, serving traditional Mexican foods. Today's ...",
];

const String placeholderText =
    "Neque porro quisquam est qui dolorem ipsum quia dolor sit amet.";

int getNumOfRestaurant () {
  return restaurants.length;
}

String getRestaurant(int index) {
  return restaurants[index];
}

String getRestaurantDescription(int index) {
  return restaurantDescription[index];
}