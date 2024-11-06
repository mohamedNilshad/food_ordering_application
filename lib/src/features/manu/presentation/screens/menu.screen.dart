import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:foa/src/core/constants/app_colors.dart';
import 'package:foa/src/core/constants/app_strings.dart';
import 'package:foa/src/core/constants/icon_strings.dart';
import 'package:foa/src/core/constants/image_strings.dart';
import 'package:foa/src/core/constants/sizes.dart';
import 'package:foa/src/core/utils/helpers/helper_functions.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with TickerProviderStateMixin{
  late TabController tabController;

  var tabTopLeft =  Radius.zero;
  var tabBottomLeft = Radius.zero;
  var tabTopRight = Radius.zero;
  var tabBottomRight  = Radius.zero;

  bool isFirstTab = true;
  bool isSecondTab = false;
  bool isThirdTab = false;

  final List<String> items = [
    'Apple', 'Banana', 'Cherry', 'Date', 'Elderberry', 'Fig', 'Grape'
  ];

  List<String> filteredItems = [];

  TextEditingController searchController = TextEditingController();

  void _filterItems() {
    final query = searchController.text.toLowerCase();
    setState(() {
      filteredItems = items.where((item) {
        return item.toLowerCase().contains(query);
      }).toList();
    });
  }

  @override
  void initState() {
    super.initState();
    tabController = TabController(initialIndex: 0, length: 3, vsync: this);
    filteredItems = items;
    searchController.addListener(_filterItems);
  }

  @override
  void dispose() {
    searchController.removeListener(_filterItems);
    searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    bool isDark = HelperFunctions.isDarkMode(context);
    double screenWidth = HelperFunctions.screenWidth(context);

    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Stack(
              clipBehavior: Clip.none,
              alignment: Alignment.center,
              children: [
                Image(
                  image: const AssetImage(ImageStrings.shopImage),
                  fit: BoxFit.fill,
                  width: screenWidth,
                  height: Sizes.imageCarouselHeight,
                ),
                Container(
                  width: screenWidth,
                  height: Sizes.imageCarouselHeight,
                  decoration: BoxDecoration(
                    gradient: AppColors.overLayerGradient,
                    borderRadius: BorderRadius.circular(Sizes.borderRadiusMd),
                  ),
                ),
                Positioned(
                  top: 90,
                  child: Container(
                    width: screenWidth,
                    padding: const EdgeInsets.symmetric(horizontal: Sizes.lg),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'El Cabanyal',
                              style: Theme.of(context).textTheme.headlineLarge?.copyWith(
                                color: AppColors.white,
                              ),
                            ),
                            Text(
                              'FASTFOOD · BURGERS',
                              style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                                color: AppColors.white,
                              ),
                            ),
                          ],
                        ),
                        const ClipOval(
                          clipBehavior: Clip.hardEdge,
                          child: Image(
                            image: AssetImage(ImageStrings.logoImage),
                            fit: BoxFit.fill,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Positioned(
                  bottom: -20.0,
                  child: Container(
                    height: 42.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(Sizes.borderRadiusXl),
                      border: Border.all(color: AppColors.grey),
                      color: AppColors.white,
                    ),
                    child: DefaultTabController(
                      length: 3,
                      child: TabBar(
                        controller: tabController,
                        indicator: BoxDecoration(
                          color: AppColors.selectedTabColor,
                          borderRadius: BorderRadius.only(
                            topLeft: isFirstTab ? const Radius.circular(Sizes.borderRadiusXl) : Radius.zero,
                            bottomLeft: isFirstTab ? const Radius.circular(Sizes.borderRadiusXl) : Radius.zero,
                            bottomRight: isThirdTab ? const Radius.circular(Sizes.borderRadiusXl) : Radius.zero,
                            topRight: isThirdTab ? const Radius.circular(Sizes.borderRadiusXl) : Radius.zero,
                          ),

                        ),
                        indicatorSize: TabBarIndicatorSize.tab,
                        isScrollable: true,
                        tabAlignment: TabAlignment.center,
                        labelPadding: const EdgeInsets.symmetric(horizontal: Sizes.lg),
                        tabs: [
                          Tab(
                              icon: SvgPicture.asset(
                                IconStrings.deliveryScooterIcon,
                                color: isFirstTab ? AppColors.selectedIcon : AppColors.lightUnSelectedIcon,
                              )
                          ),
                          Tab(
                              icon: SvgPicture.asset(
                                IconStrings.takeAwayFoodIcon,
                                color: isSecondTab ? AppColors.selectedIcon : AppColors.lightUnSelectedIcon,
                              ),
                          ),
                          Tab(
                              icon: SvgPicture.asset(
                                IconStrings.restaurantTableIcon,
                                color: isThirdTab ? AppColors.selectedIcon : AppColors.lightUnSelectedIcon,
                              ),
                          ),
                        ],
                        onTap: (index){
                          setState(() {
                            isFirstTab = index == 0;
                            isSecondTab = index == 1;
                            isThirdTab = index == 2;
                          });
                        },
                      ),
                    ),
                  ),
                ),
              ],
            ),

            Expanded(
              child: Container(
                color: Colors.red,
                child: TabBarView(
                  controller: tabController,
                  children: const [
                    Center(child: Text('Tab 1 Content')),
                    Center(child: Text('Tab 2 Content')),
                    Center(child: Text('Tab 3 Content')),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
