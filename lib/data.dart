String accountNameData = "John Smith";
String accountEmailData = "example@mail.com";

int navIndex = 0;

getNavIndex() {
  return navIndex;
}

setNavIndex(int index) {
  navIndex = index;
}

String street = "1 Maple St";
String city = "Redwood City";
String state = "CA";
String zip = "94061";

getAddress() {
  return street + ", " + city + ", " + state + " " + zip;
}

String creditNum = "XXXX XXXX XXXX 4547";
String creditDate = "MM/YYYY";
String ccv = "CVV";

getCard() {
  return creditNum;
}

// add favorite list
// add history list

getAccountNameData() {
  return accountNameData;
}

setAccountNameData(String tmp) {
  accountNameData = tmp;
}

getAccountEmailData() {
  return accountEmailData;
}

setAccountEmailData(String tmp) {
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
    "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer accumsan euismod lacinia. Maecenas laoreet mattis felis sit amet ullamcorper. Integer pellentesque sed justo quis auctor. Aenean ultricies elementum metus non aliquam. Vestibulum commodo, nibh sed sollicitudin commodo, odio lacus pellentesque orci.";

String getPlaceHolderText() {
  return placeholderText;
}

int getNumOfRestaurant() {
  return restaurants.length;
}

String getRestaurant(int index) {
  return restaurants[index];
}

String getRestaurantDescription(int index) {
  return restaurantDescription[index];
}
