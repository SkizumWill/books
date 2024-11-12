import 'package:books/presentation/widget/home_widget/header_home_widget.dart';
import 'package:books/presentation/widget/home_widget/tab_item_home_widget.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../../core/utils/constant/colors.dart';

List<String> images = [
  "asset/image/image1.jpg",
  "asset/image/image2.jpg",
  "asset/image/image3.jpg"
];
List<MaterialColor> colors = [Colors.red, Colors.green, Colors.yellow];

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  int currentindex = 0;
  late TabController tabController;

  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 4, vsync: this);
  }

  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey.shade200,
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const HeaderHomeWidget(),
              const SizedBox(
                height: 10,
              ),
              TextFormField(
                decoration: InputDecoration(
                  hintText: "Search here",
                  suffixIcon: Icon(Icons.search,
                      size: 25, color: TColors.primaryColors),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              ConstrainedBox(
                constraints: const BoxConstraints(maxHeight: 200),
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: CarouselSlider(
                    // controller: carouselController,
                    // itemExtent: 330,
                    // shrinkExtent: 200,
                    // itemSnapping: false,
                    // reverse: true,
                    // padding: const EdgeInsets.all(10.0),

                    options: CarouselOptions(
                        autoPlay: true,
                        height: 400,
                        viewportFraction: 1,
                        autoPlayAnimationDuration: const Duration(seconds: 2),
                        enlargeCenterPage: true,
                        onPageChanged: (index, reason) {
                          setState(() {
                            currentindex = index;
                          });
                        }),
                    items: List.generate(
                      images.length,
                      (index) => Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage(
                                images[index],
                              ),
                              fit: BoxFit.cover,
                            ),
                            borderRadius: BorderRadius.circular(8)),
                      ),
                    ),
                  ),
                ),
              ),
              Center(
                child: AnimatedSmoothIndicator(
                  activeIndex: currentindex,
                  count: images.length,
                  effect: WormEffect(
                    dotHeight: 2,
                    dotWidth: 10,
                    activeDotColor: TColors.primaryColors,
                  ),
                ),
              ),

              const SizedBox(
                height: 8,
              ),
              // TODO: group livre by  genre
              Container(
                height: 40,
                margin: const EdgeInsets.symmetric(horizontal: 10),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: TColors.buttonColors),
                child: TabBar(
                    controller: tabController,
                    isScrollable: true,
                    indicatorSize: TabBarIndicatorSize.tab,
                    dividerColor: Colors.transparent,
                    tabAlignment: TabAlignment.start,
                    indicator: BoxDecoration(
                        color: TColors.primaryColors,
                        borderRadius: BorderRadius.circular(12)),
                    labelColor: TColors.whiteBackground,
                    tabs: const [
                      TabItemHomeWidget(title: "Fiction", count: 5),
                      TabItemHomeWidget(title: "Science", count: 6),
                      TabItemHomeWidget(
                          title: "Developement personel", count: 8),
                      TabItemHomeWidget(title: "Money", count: 10)
                    ]),
              ),
              Expanded(
                child: TabBarView(
                  controller: tabController,
                  children: const [
                    Center(
                        child: Text("Contenu de l'Onglet 1",
                            style: TextStyle(fontSize: 18))),
                    Center(
                        child: Text("Contenu de l'Onglet 2",
                            style: TextStyle(fontSize: 18))),
                    Center(
                        child: Text("Contenu de l'Onglet 3",
                            style: TextStyle(fontSize: 18))),
                    Center(
                        child: Text("Contenu de l'Onglet 3",
                            style: TextStyle(fontSize: 18))),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
