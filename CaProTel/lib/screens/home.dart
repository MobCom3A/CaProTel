import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:caprotel/pages/home_page.dart';
import 'package:caprotel/screens/root_app.dart';
import 'package:caprotel/screens/setting.dart';
import 'package:caprotel/theme/color.dart';
import 'package:caprotel/utils/data.dart';
import 'package:caprotel/widgets/city_item.dart';
import 'package:caprotel/widgets/feature_item.dart';
import 'package:caprotel/widgets/notification_box.dart';
import 'package:caprotel/widgets/recommend_item.dart';
import 'package:caprotel/widg/home/hotel.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: orange.withOpacity(0.2),
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            backgroundColor: appBarColor,
            pinned: true,
            snap: true,
            floating: true,
            title: getAppBar(),
          ),
          SliverToBoxAdapter(
            child: buildBody(),
          ),
        ],
      ),
    );
  }

  Widget getAppBar() {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              Row(
                children: [
                  Icon(
                    Icons.place_outlined,
                    color: labelColor,
                    size: 20,
                  ),
                  SizedBox(
                    width: 3,
                  ),
                  Text(
                    "Cagayan Valley",
                    style: TextStyle(
                      decoration: TextDecoration.underline,
                      decorationStyle: TextDecorationStyle.dotted,
                      color: darker,
                      fontSize: 14,
                    ),
                  ),
                ],
              )
            ],
          ),
          Row(
            children: [
              const Align(
                alignment: Alignment.topRight,
                child: Text(
                  "CaProTel",
                  style: TextStyle(
                    color: darker,
                    fontWeight: FontWeight.w900,
                    fontSize: 20,
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }

  buildBody() {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.only(top: 5, bottom: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(15, 0, 15, 5),
              child: Text(
                "Find and Book",
                style: TextStyle(
                  color: labelColor,
                  fontSize: 14,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(15, 0, 15, 10),
              child: Text(
                "The Best Hotel Rooms",
                style: TextStyle(
                  color: textColor,
                  fontWeight: FontWeight.w600,
                  fontSize: 22,
                ),
              ),
            ),
            getCities(),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(15, 0, 15, 10),
              child: Text(
                "Featured",
                style: TextStyle(
                  color: textColor,
                  fontWeight: FontWeight.w500,
                  fontSize: 22,
                ),
              ),
            ),
            getFeature(),
            SizedBox(
              height: 15,
            ),
            Container(
              margin: EdgeInsets.fromLTRB(15, 0, 15, 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Recommended",
                    style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.w500,
                        color: textColor),
                  ),
                  Text(
                    "See all",
                    style: TextStyle(fontSize: 14, color: darker),
                  ),
                ],
              ),
            ),
            getRecommend(),
          ],
        ),
      ),
    );
  }

  getFeature() {
    return CarouselSlider(
      options: CarouselOptions(
        height: 300,
        enlargeCenterPage: true,
        disableCenter: true,
        viewportFraction: .75,
      ),
      items: List.generate(
        features.length,
        (index) => FeatureItem(
          data: features[index],
          onTap: () {
            Navigator.of(context).push(myRoute[index]);
          },
        ),
      ),
    );
  }

  getRecommend() {
    return SingleChildScrollView(
      padding: EdgeInsets.fromLTRB(15, 5, 0, 5),
      scrollDirection: Axis.horizontal,
      child: Row(
        children: List.generate(
          recommends.length,
          (index) => Padding(
            padding: const EdgeInsets.only(right: 10),
            child: RecommendItem(
              data: recommends[index],
              onTap: () {
                Navigator.of(context).push(myRoute2[index]);
              },
            ),
          ),
        ),
      ),
    );
  }

  getCities() {
    return SingleChildScrollView(
      padding: EdgeInsets.fromLTRB(15, 5, 0, 10),
      scrollDirection: Axis.horizontal,
      child: Row(
        children: List.generate(
          cities.length,
          (index) => Padding(
            padding: const EdgeInsets.only(right: 8),
            child: CityItem(
              data: cities[index],
              onTap: () {},
            ),
          ),
        ),
      ),
    );
  }
}
