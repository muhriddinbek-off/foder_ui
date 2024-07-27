import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:foder_ui/bloc/navigate/navigate_page_bloc.dart';
import 'package:foder_ui/ui/home/home_screen.dart';
import 'package:foder_ui/ui/promo/promo_screen.dart';
import 'package:foder_ui/utils/app_color.dart';
import 'package:foder_ui/utils/app_icons.dart';

class NavigateScreen extends StatefulWidget {
  const NavigateScreen({super.key});

  @override
  State<NavigateScreen> createState() => _NavigateScreenState();
}

class _NavigateScreenState extends State<NavigateScreen> {
  List<Widget> pages = [
    const HomeScreen(),
    const PromoScreen(),
    Container(color: Colors.blue),
    Container(color: Colors.deepOrange),
  ];

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NavigatePageBloc, NavigatePageState>(builder: (context, state) {
      return Scaffold(
        backgroundColor: AppColor.backgroundColor,
        body: pages[state.tabIndex],
        bottomNavigationBar: BottomNavigationBar(
          onTap: (value) {
            context.read<NavigatePageBloc>().add(TabChange(tabIndex: value));
          },
          type: BottomNavigationBarType.fixed,
          showSelectedLabels: true,
          showUnselectedLabels: true,
          currentIndex: state.tabIndex,
          backgroundColor: AppColor.whiteColor,
          items: [
            BottomNavigationBarItem(
              icon: SvgPicture.asset(AppIcons.home, colorFilter: ColorFilter.mode(state.tabIndex == 0 ? AppColor.brandPrimaryColor : AppColor.textPrimaryColor, BlendMode.srcIn)),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(AppIcons.bag, colorFilter: ColorFilter.mode(state.tabIndex == 1 ? AppColor.brandPrimaryColor : AppColor.textPrimaryColor, BlendMode.srcIn)),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(AppIcons.search, colorFilter: ColorFilter.mode(state.tabIndex == 2 ? AppColor.brandPrimaryColor : AppColor.textPrimaryColor, BlendMode.srcIn)),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(AppIcons.user, colorFilter: ColorFilter.mode(state.tabIndex == 3 ? AppColor.brandPrimaryColor : AppColor.textPrimaryColor, BlendMode.srcIn)),
              label: '',
            ),
          ],
        ),
      );
    });
  }
}
