import 'package:flutter/material.dart';
import 'package:foa/src/core/constants/app_colors.dart';
import 'package:foa/src/core/constants/icon_strings.dart';
import 'package:foa/src/core/constants/sizes.dart';
import 'package:foa/src/core/domain/entities/menu/menu.entity.dart';
import 'package:foa/src/core/presentation/widgets/svg_icon_builder.widget.dart';
import 'package:foa/src/core/utils/helpers/helper_functions.dart';
import 'package:foa/src/features/manu/presentation/providers/menu.provider.dart';
import 'package:foa/src/features/manu/presentation/screens/widgets/menu_list_bottom_sheet.widget.dart';
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
  int selectedManuIndex = 0;
  String selectedManuId = '';
  String selectedManu = 'SELECT A MENU';


  int selectedCatValue = 0;
  late double screenWidth;
  bool loadingMenu = false;

  Future<void> scrollToIndex(int index) async {
    await _autoScrollController.scrollToIndex(
      index,
      preferPosition: AutoScrollPosition.begin,
      duration: const Duration(seconds: 2),
    );
    _autoScrollController.highlight(index);
  }

  Future<void> _getAllMenu() async {

    if (loadingMenu) return;
    setState(() => loadingMenu = true);

    try {

      context.read<MenuProvider>().getAllMenu(context).then((v) {
        setState(() {
          // print(v);
          menu = v!;
          selectedManuId = menu.first.menuID!;
          // selectedManu = menu.first.title!.en!;
          loadingMenu = false;
        });
      });
    } on Exception {
      setState(() => loadingMenu = false);
    }
  }

  @override
  void initState() {
    super.initState();
    Future.microtask(() => _getAllMenu());
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
    return Scaffold(
      body: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
              padding: const EdgeInsets.symmetric(vertical: Sizes.lg, horizontal: Sizes.sm),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: (){
                      _showModalBottomSheet();
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

                  const CSvgIconBuilder(icon: IconStrings.searchIcon)
                ],
              ),
            ),

          Container(
            height: 32.0,
            padding: const EdgeInsets.only(left: Sizes.sm),
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemCount: 5,
              shrinkWrap: true,
              itemBuilder: (context, index) {
                return ChoiceChip(
                  showCheckmark: false,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(Sizes.borderRadiusXXl),
                    side: const BorderSide(color: AppColors.white),
                  ),
                  visualDensity: const VisualDensity(vertical: -4),
                  label: Row(
                    children: [
                      Text('Item $index'),
                      if(selectedCatValue == index)
                        const Padding(
                          padding: EdgeInsets.only(left: Sizes.sm),
                          child: CSvgIconBuilder(
                            icon: IconStrings.closeIcon,
                            color: AppColors.white,
                          ),
                        )
                    ],
                  ),
                  selectedColor: AppColors.primary,
                  labelStyle: Theme.of(context).textTheme.titleSmall?.copyWith(
                    color: selectedCatValue == index ? AppColors.white : AppColors.black
                  ),
                  padding: EdgeInsets.fromLTRB(16.0, 8.0, ((selectedCatValue == index) ? 12.0 : 16.0), 8.0),
                  selected: selectedCatValue == index,
                  side: const BorderSide(color: AppColors.grey),
                  onSelected: (bool selected) {
                    if (selected) {
                      setState(() => selectedCatValue = index);
                    }
                  },
                );
              },
              separatorBuilder: (context, index){
                return const SizedBox(width: Sizes.sm);
              },
            ),
          ),

        ],
      ),
    );
  }

  void _showModalBottomSheet() {
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
                  setState(() {
                    selectedManuId = manuId;
                    selectedManuIndex = selectedIndex;
                    selectedManu = selectedManuItem;
                  });
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

