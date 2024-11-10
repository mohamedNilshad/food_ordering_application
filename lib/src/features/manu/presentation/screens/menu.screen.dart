import 'package:flutter/material.dart';
import 'package:foa/src/core/constants/app_colors.dart';
import 'package:foa/src/core/constants/icon_strings.dart';
import 'package:foa/src/core/constants/image_strings.dart';
import 'package:foa/src/core/constants/sizes.dart';
import 'package:foa/src/core/presentation/widgets/custom_tab_bar.widget.dart';
import 'package:foa/src/core/utils/helpers/helper_functions.dart';
import 'package:foa/src/features/manu/presentation/screens/widgets/delivery_page.widget.dart';
import 'package:foa/src/features/manu/presentation/screens/widgets/restaurant_page.widget.dart';
import 'package:foa/src/features/manu/presentation/screens/widgets/takeaway_page.widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with TickerProviderStateMixin {
  final PageController _pageController = PageController(initialPage: 1);
  TextEditingController searchController = TextEditingController();

  int _selectedPageIndex = 1;

  final List<String> items = [
    'Apple',
    'Banana',
    'Cherry',
    'Date',
    'Elderberry',
    'Fig',
    'Grape'
  ];

  List<String> filteredItems = [];


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
    double screenWidth = HelperFunctions.screenWidth(context);
    double screenHeight = HelperFunctions.screenHeight(context);

    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          physics: const ScrollPhysics(),
          child: Column(
            children: [
              Stack(
                alignment: Alignment.topCenter,
                clipBehavior: Clip.none,
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
                    top: 87.0,
                    child: Container(
                      width: screenWidth,
                      padding: const EdgeInsets.symmetric(horizontal: Sizes.lg),
                      child: ListTile(
                        contentPadding: const EdgeInsets.symmetric(horizontal: 0),
                        titleTextStyle: Theme.of(context).textTheme.headlineLarge?.copyWith(
                          color: AppColors.white,
                        ),
                        subtitleTextStyle: Theme.of(context).textTheme.bodyLarge?.copyWith(
                          color: AppColors.white,
                        ),
                        title: const Text('El Cabanyal'),
                        subtitle: const Text('FASTFOOD · BURGERS'),
                        trailing: const ClipOval(
                          clipBehavior: Clip.hardEdge,
                          child: Image(
                            image: AssetImage(ImageStrings.logoImage),
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    height: 42.0,
                    margin: const EdgeInsets.only(
                      top: Sizes.imageCarouselHeight - 21.0,
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(Sizes.borderRadiusXl),
                      border: Border.all(color: AppColors.grey),
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        CTabBarButton(
                          iconPath: IconStrings.deliveryScooterIcon,
                          isSelected: _selectedPageIndex == 0,
                          pageController: _pageController,
                          pageIndex: 0,
                          onSelected: (selected) {
                            setState(() => _selectedPageIndex = 0);
                          },
                        ),
                        CTabBarButton(
                          iconPath: IconStrings.takeAwayFoodIcon,
                          isSelected: _selectedPageIndex == 1,
                          pageController: _pageController,
                          pageIndex: 1,
                          onSelected: (selected) {
                            setState(() => _selectedPageIndex = 1);
                          },
                        ),
                        CTabBarButton(
                          iconPath: IconStrings.restaurantTableIcon,
                          isSelected: _selectedPageIndex == 2,
                          pageController: _pageController,
                          pageIndex: 2,
                          onSelected: (selected) {
                            setState(() => _selectedPageIndex = 2);
                          },
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: screenHeight - Sizes.imageCarouselHeight - 42,
                child: PageView(
                  controller: _pageController,
                  children:  const [
                    DeliveryPageWidget(),
                    TakeawayPageWidget(),
                    RestaurantPageWidget(),
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

