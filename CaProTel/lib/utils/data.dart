import 'package:flutter/material.dart';
import 'package:caprotel/pages/home_page.dart';
import 'package:caprotel/pages/home_page2.dart';
import 'package:caprotel/pages/home_page3.dart';
import 'package:caprotel/pages/home_page4.dart';
import 'package:caprotel/pages/home_page5.dart';
import 'package:caprotel/pages/home_page6.dart';
import 'package:caprotel/pages/home_page7.dart';
import 'package:caprotel/pages/home_page8.dart';

var profile = {
  "name": "User",
  "image":
      "https://cdn3.iconfinder.com/data/icons/vector-icons-6/96/256-1024.png",
  "email": "user@gmail.com"
};

List cities = [
  {"name": "Cagayan Valley", "icon": "assets/icons/home.svg"},
  {"name": "Tuguegarao City", "icon": "assets/icons/home.svg"},
  {"name": "Sta. Ana", "icon": "assets/icons/home.svg"},
  {"name": "Baggao", "icon": "assets/icons/home.svg"},
  {"name": "Solana", "icon": "assets/icons/home.svg"},
  {"name": "Poblacion", "icon": "assets/icons/home.svg"},
];
List myRoute = [
  MaterialPageRoute(builder: (context) => HomeyPage()),
  MaterialPageRoute(builder: (context) => Homey2Page()),
  MaterialPageRoute(builder: (context) => Homey3Page()),
  MaterialPageRoute(builder: (context) => Homey4Page()),
  MaterialPageRoute(builder: (context) => Homey5Page()),
];
List myRoute2 = [
  MaterialPageRoute(builder: (context) => Homey6Page()),
  MaterialPageRoute(builder: (context) => Homey7Page()),
  MaterialPageRoute(builder: (context) => Homey8Page()),
];
List features = [
  {
    "id": 100,
    "name": "Go Hotels Plus",
    "image":
        "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/23/21/5e/df/lobby.jpg?w=300&h=300&s=1",
    "type": cities[1]["name"],
    "rate": "4.5",
    "location": "Tuguegarao City",
    "is_favorited": false,
  },
  {
    "id": 101,
    "name": "Mango Suites",
    "image":
        "https://q-xx.bstatic.com/xdata/images/hotel/840x460/349713413.jpg?k=f285ba81a17110ce7f70115cbb298e2317629cdd5f7f60fd7a4d01cc71c90598&o=",
    "type": cities[2]["name"],
    "rate": "4.5",
    "location": "Tuguegarao City",
    "is_favorited": true,
  },
  {
    "id": 102,
    "name": "Country Inn",
    "image":
        "https://pix10.agoda.net/hotelImages/503/503288/503288_15041615430026914830.jpg?ca=3&ce=1&s=1024x768",
    "price": "\$320",
    "type": cities[2]["name"],
    "rate": "4.5",
    "location": "Sta. Ana",
    "is_favorited": false,
  },
  {
    "id": 103,
    "name": "Las Palmas de San Jose",
    "image":
        "https://media-cdn.tripadvisor.com/media/photo-s/0f/a2/22/a2/the-pool-area.jpg",
    "type": cities[1]["name"],
    "rate": "4.5",
    "location": "Tuguegarao City",
    "is_favorited": false,
  },
  {
    "id": 104,
    "name": "Hotel Carmelita",
    "image":
        "https://hotel-carmelita-tuguegarao-city.booked.net/data/Photos/r1326x761/9234/923401/923401909/Hotel-Carmelita-Tuguegarao-City-Exterior.JPEG",
    "type": cities[1]["name"],
    "rate": "4.5",
    "location": "Tuguegarao City",
    "is_favorited": false,
  },
];

List recommends = [
  {
    "id": 105,
    "name": "Pulsar Hotel Premier Suites",
    "image":
        "https://lh3.googleusercontent.com/p/AF1QipNmYTJRYhJ1gLMNuc_dwZjGiLw4K7zZW6ScOCpp=w480-h360-n-k-rw-no-v1",
    "location": cities[1]["name"],
    "rate": "4.5",
    "is_favorited": false,
  },
  {
    "id": 106,
    "name": "Hakysia Hotel",
    "image":
        "https://scontent.fcrk3-1.fna.fbcdn.net/v/t1.6435-9/190761951_742270783132018_5133647133460794915_n.jpg?_nc_cat=110&ccb=1-7&_nc_sid=8bfeb9&_nc_ohc=-8KiH96rO6QAX9jObHG&_nc_ht=scontent.fcrk3-1.fna&oh=00_AfAGzrYkR2P6nM0ZztLxcWwWwTTROJYA7dugnqO4D8WZwQ&oe=645FC20D",
    "location": cities[4]["name"],
    "rate": "4.5",
    "is_favorited": false,
  },
  {
    "id": 107,
    "name": "Balai Carmela",
    "image":
        "https://q-xx.bstatic.com/xdata/images/hotel/max1280x900/109933370.jpg?k=a898cf5b29f9cba9fa12c2c890b99485a17b06929b9ec8cf3422b3cf74fa3bb9&o=",
    "location": cities[1]["name"],
    "rate": "4.5",
    "is_favorited": false,
  },
];
