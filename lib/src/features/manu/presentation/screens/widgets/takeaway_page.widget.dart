import 'package:flutter/material.dart';
import 'package:foa/src/core/constants/app_colors.dart';
import 'package:foa/src/core/constants/app_strings.dart';
import 'package:foa/src/core/constants/icon_strings.dart';
import 'package:foa/src/core/constants/image_strings.dart';
import 'package:foa/src/core/constants/sizes.dart';
import 'package:foa/src/core/domain/entities/Items/menu_item.entity.dart';
import 'package:foa/src/core/domain/entities/category/category.entity.dart';
import 'package:foa/src/core/domain/entities/menu/menu.entity.dart';
import 'package:foa/src/core/presentation/progress_indicators/custom.circular_progress_indicator.dart';
import 'package:foa/src/core/presentation/widgets/svg_icon_builder.widget.dart';
import 'package:foa/src/core/provider/load_data.provider.dart';
import 'package:foa/src/core/utils/helpers/helper_functions.dart';
import 'package:foa/src/features/manu/presentation/screens/widgets/category_list.widget.dart';
import 'package:foa/src/features/manu/presentation/screens/widgets/ingredients_page.widget.dart';
import 'package:foa/src/features/manu/presentation/screens/widgets/item_list.widget.dart';
import 'package:foa/src/features/manu/presentation/screens/widgets/menu_list_bottom_sheet.widget.dart';
import 'package:foa/src/features/manu/presentation/screens/widgets/nutritional_page.widget.dart';
import 'package:provider/provider.dart';
import 'package:scroll_to_index/scroll_to_index.dart';

class TakeawayPageWidget extends StatefulWidget {
  const TakeawayPageWidget({super.key});

  @override
  State<TakeawayPageWidget> createState() => _TakeawayPageWidgetState();
}

class _TakeawayPageWidgetState extends State<TakeawayPageWidget> {
  late AutoScrollController _autoScrollController;
  List<Menu> menu = [];
  List<Category> category = [];
  List<MenuItem> menuItems = [];

  int selectedManuIndex = 0;
  String selectedManuId = '';
  String selectedManu = 'SELECT A MENU';
  int selectedCatIndex = 0;
  String selectedCat = '';
  late double screenWidth;
  late double screenHeight;
  bool loadingMenu = false;
  bool loading = false;

  Future<void> scrollToIndex(int index) async {
    await _autoScrollController.scrollToIndex(
      index,
      preferPosition: AutoScrollPosition.begin,
      duration: const Duration(seconds: 2),
    );
    _autoScrollController.highlight(index);
  }

  Future<void> _setDefault() async {

    if (loading) return;
    setState(() => loading = true);
    try {
        setState(() {
          ///fetch all the menu
          menu = context.read<LoadDataProvider>().res!.menu!;

          ///fetch the categories
          category = context.read<LoadDataProvider>().res!.categories!
              .where((category) =>
              menu.first.menuCategoryIDs!.contains(category.menuCategoryID)
          ).toList();

          ///fetch menu items
          menuItems = context.read<LoadDataProvider>().res!.items!
              .where((item) =>
              category.first.menuEntities!.any((entity) => entity.id == item.menuItemID)
          ).toList();
          selectedCat = category.first.title!.en!;
          selectedCatIndex = 0;
          selectedManuId = menu.first.menuID!;
          selectedManu = menu.first.title!.en!;
          loading = false;
        });
    } on Exception {
      setState(() => loading = false);
    }
  }

  Future<void> _setManuData({required int index}) async {

    if (loading) return;
    setState(() => loading = true);
    try {
        setState(() {
          category = context.read<LoadDataProvider>().res!.categories!
              .where((category) =>
              menu[index].menuCategoryIDs!.contains(category.menuCategoryID)
          ).toList();


          menuItems = context.read<LoadDataProvider>().res!.items!
              .where((item) =>
              category.first.menuEntities!.any((entity) => entity.id == item.menuItemID)
          ).toList();

          selectedCat = category.first.title!.en!;
          selectedCatIndex = 0;
          selectedManuId = menu[index].menuID!;
          selectedManu = menu[index].title!.en!;
          selectedManuIndex = index;
          loading = false;
        });
    } on Exception {
      setState(() => loading = false);
    }
  }

  Future<void> _setCatData({required int index}) async {

    if (loading) return;
    setState(() => loading = true);
    try {
        setState(() {

          menuItems = context.read<LoadDataProvider>().res!.items!
              .where((item) =>
              category[index].menuEntities!.any((entity) => entity.id == item.menuItemID)
          ).toList();

          selectedCat = category[index].title!.en!;
          loading = false;
        });
    } on Exception {
      setState(() => loading = false);
    }
  }

  List<String> ingredientItems = ['Eggs', 'Fish', 'Milk', 'Mollusks', 'Mustard', 'Gluten', 'Sugar', 'Butter'];

  @override
  void initState() {
    super.initState();
    Future.microtask(() => _setDefault());
    _autoScrollController = AutoScrollController();
  }

  @override
  void dispose() {
    _autoScrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    screenWidth = HelperFunctions.screenWidth(context);
    screenHeight = HelperFunctions.screenHeight(context);
    return Scaffold(
      body: RefreshIndicator(
        onRefresh: () async {
          Future.microtask(() => _setDefault());
          await Future.delayed(const Duration(microseconds: 800));
        },
        child: Visibility(
          visible: !loading,
          replacement: const CCircularProgressIndicator(),
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: Sizes.sm),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: Sizes.lg),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          GestureDetector(
                            onTap: (){
                              _showSelectMenuBottomSheet();
                              scrollToIndex(selectedManuIndex);
                            },
                            child: Container(
                              padding: const EdgeInsets.fromLTRB(Sizes.md, Sizes.sm, Sizes.sm, Sizes.sm),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(Sizes.sm),
                                color: AppColors.grey,
                              ),
                              child: Row(
                                children: [
                                  Text(
                                    selectedManu,
                                    textWidthBasis: TextWidthBasis.parent,
                                    softWrap: true,
                                    overflow: TextOverflow.clip,
                                    maxLines: 1,
                                    style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                                        overflow: TextOverflow.clip
                                    ),
                                  ),
                                  const CSvgIconBuilder(icon: IconStrings.arrowDownIcon)
                                ],
                              ),
                            ),
                          ),
                          IconButton(
                            onPressed: (){},
                            icon: const CSvgIconBuilder(icon: IconStrings.searchIcon),
                          )
                        ],
                      ),
                  ),
                  Container(
                    height: 32.0,
                    alignment: Alignment.centerLeft,
                    child: ListView.separated(
                      scrollDirection: Axis.horizontal,
                      itemCount: category.length,
                      shrinkWrap: true,
                      itemBuilder: (context, index) {
                        return CategoryList(
                          index: index,
                          selectedCatIndex: selectedCatIndex,
                          title: category[index].title!.en!,
                          onSelected: (selected) {
                            if (selected) {
                              setState(() => selectedCatIndex = index);
                              Future.microtask(() => _setCatData(index: index));
                            }
                          },
                        );
                      },
                      separatorBuilder: (context, index){
                        return const SizedBox(width: Sizes.sm);
                      },
                    ),
                  ),
                  ListView.separated(
                    scrollDirection: Axis.vertical,
                    physics: const ScrollPhysics(),
                    itemCount: menuItems.length,
                    shrinkWrap: true,
                    itemBuilder: (context, index) {
                      return ItemList(
                        index: index,
                        header: index == 0 ? selectedCat : '',
                        imgURL: menuItems[index].imageURL!, //?? ImageStrings.itemImage,
                        title: menuItems[index].title!.en!,
                        subtitle: menuItems[index].description!.en!,
                        price: menuItems[index].priceInfo!.price!.tablePrice!.toDouble(),
                        promo: menuItems[index].metaData!.isDealProduct ?? false,
                        onSelected: (int selectedIndex){
                          _showCartBottomSheet(index: selectedIndex);
                        },
                      );
                    },
                    separatorBuilder: (context, index){
                      return Container(
                        padding: const EdgeInsets.symmetric(horizontal: Sizes.lg),
                        child: const Divider(),
                      );
                    },
                  ),
                  const SizedBox(height: Sizes.spaceBtwSections),
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                        minimumSize: Size(screenWidth, Sizes.buttonHeight)),
                    child: const Text('Basket • 3 items • £24.00'),
                  ),
                  const SizedBox(height: Sizes.sm),
                  OutlinedButton(
                    onPressed: () {},
                    style: OutlinedButton.styleFrom(
                      minimumSize: Size(screenWidth, Sizes.buttonHeight),
                      foregroundColor: AppColors.primary,
                    ),
                    child: const Text(AppStrings.viewBasketLabel),
                  ),
                  const SizedBox(height: Sizes.lg),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  void _showCartBottomSheet({required int index}) {
    MenuItem tempMenuItems = menuItems[index];
    double price = tempMenuItems.priceInfo!.price!.tablePrice!.toDouble();
    showModalBottomSheet<void>(
      context: context,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(Sizes.md)),
      ),
      isScrollControlled: true,
      showDragHandle: false,

      builder: (BuildContext context) {
        return StatefulBuilder(
            builder: (BuildContext context, StateSetter bottomSheetSetState) {
            return FractionallySizedBox(
              heightFactor: 0.95,
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        GestureDetector(
                          onTap: () => Navigator.pop(context),
                          child: const CSvgIconBuilder(icon: IconStrings.closeIcon),
                        ),
                        Container(
                          width: 48.0,
                          height: 5.0,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(100.0),
                              color: AppColors.grey
                          ),
                          margin: const EdgeInsets.only(bottom: Sizes.sm),
                        ),
                        const SizedBox(
                          child: CSvgIconBuilder(icon: IconStrings.closeIcon, color: Colors.transparent),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: screenHeight-110,
                      child: SingleChildScrollView(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              clipBehavior: Clip.hardEdge,
                              width: screenWidth,
                              height: Sizes.imageCarouselHeight,
                              margin: const EdgeInsets.symmetric(vertical: Sizes.md),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(Sizes.borderRadius),
                                image: const DecorationImage(
                                  image: AssetImage(ImageStrings.itemImage),
                                  fit: BoxFit.fill
                                ),
                              ),
                              // child: CNetworkImageBuilder(
                              //   imgUrl: imgURL,
                              //   width: Sizes.productImageSize,
                              //   height: Sizes.productImageSize,
                              //   altImgUrl: ImageStrings.defaultNetworkImage,
                              // ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Flexible(
                                  child: Text(
                                    tempMenuItems.title!.en!,
                                    maxLines: 2,
                                    style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                                      overflow: TextOverflow.ellipsis
                                    ),
                                  ),
                                ),
                                Text(
                                  HelperFunctions.formatCurrency(price),
                                  style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                                    fontSize: 20.0,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(height: Sizes.md),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const CSvgIconBuilder(icon: IconStrings.locationIcon, color: AppColors.primary),
                                Row(
                                  children: [
                                    const CSvgIconBuilder(icon: IconStrings.starIcon, color: AppColors.primary),
                                    const SizedBox(width: Sizes.xs),
                                    Text(
                                      tempMenuItems.totalReviews!.toDouble().toString(),
                                      style: Theme.of(context).textTheme.labelLarge?.copyWith(
                                        fontWeight: FontWeight.w700,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            const SizedBox(height: Sizes.md),
                            Text(
                              tempMenuItems.description!.en!,
                              maxLines: 4,
                              style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                            DefaultTabController(
                              length: 4,
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  TabBar(
                                    isScrollable: true,
                                    labelColor: AppColors.primary,
                                    labelStyle: Theme.of(context).textTheme.titleMedium,
                                    unselectedLabelColor: AppColors.black,
                                    indicatorColor: AppColors.primary,
                                    tabAlignment: TabAlignment.start,
                                    indicatorSize: TabBarIndicatorSize.tab,
                                    physics: const ScrollPhysics(),
                                    padding: const EdgeInsets.symmetric(horizontal: 0),
                                    tabs: const [
                                      Tab(text: "Ingredients"),
                                      Tab(text: "Nutritional"),
                                      Tab(text: "Instructions"),
                                      Tab(text: "Allergies"),
                                    ],
                                  ),
                                  SizedBox(
                                    height: screenHeight-150,//670,
                                    child: TabBarView(
                                      physics: const ScrollPhysics(),
                                      children: [
                                        IngredientsPage(
                                          ingredientItems: ingredientItems,
                                          menuItem: tempMenuItems,
                                        ),
                                        const NutritionalPage(),
                                        Container(
                                          padding: const EdgeInsets.only(top: Sizes.lg),
                                          alignment: Alignment.topCenter,
                                          child: const Text("Instructions Page"),
                                        ),
                                        Container(
                                          padding: const EdgeInsets.only(top: Sizes.lg),
                                          alignment: Alignment.topCenter,
                                          child: const Text("Allergies Page"),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            );
          }
        );
      },
    );
  }

  void _showSelectMenuBottomSheet() {
    String tSelectedManuId = selectedManuId;
    int tSelectedManuIndex = selectedManuIndex;

    showModalBottomSheet<void>(
      context: context,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(Sizes.md)),
      ),
      isScrollControlled: true,
      showDragHandle: false,
      builder: (BuildContext context) {
        return StatefulBuilder(
            builder: (BuildContext context, StateSetter bottomSheetSetState) {
            return MenuListBottomSheet(
              menu: menu,
              selectedManuId: tSelectedManuId,
              selectedManuIndex: tSelectedManuIndex,
              onMenuSelected: (String manuId, int selectedIndex){
                setState(() {
                  tSelectedManuId = manuId;
                  tSelectedManuIndex = selectedIndex;
                });
                bottomSheetSetState(() {});
              },
              onPressed: (String manuId, String selectedManuItem, int selectedIndex){
                Future.microtask(() => _setManuData(index: selectedIndex));
                Navigator.pop(context);
                bottomSheetSetState(() {});
              },
              autoScrollController: _autoScrollController,
            );
          }
        );
      },
    );
  }

}

