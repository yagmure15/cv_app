import 'package:custom_navigation_bar/custom_navigation_bar.dart';
import 'package:cv_maker/home/presentation/widgets/favorite_page.dart';
import 'package:cv_maker/home/presentation/widgets/my_home_page.dart';
import 'package:cv_maker/home/presentation/widgets/profile_page.dart';
import 'package:cv_maker/home/presentation/widgets/settings_page.dart';
import 'package:cv_maker/home/presentation/widgets/todo_list_dialog.dart';
import 'package:cv_maker/utils/constants/assets.gen.dart';
import 'package:cv_maker/utils/palette.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(8),
        child: CustomNavigationBar(
          isFloating: true,
          selectedColor: const Color(0xff040307),
          strokeColor: const Color(0x30040307),
          unSelectedColor: const Color(0xffacacac),
          borderRadius: const Radius.circular(12),
          items: [
            CustomNavigationBarItem(
              icon: SvgPicture.asset(Assets.svg.home, semanticsLabel: 'Home Icon'),
              selectedIcon: SvgPicture.asset(Assets.svg.homeSelected, semanticsLabel: 'Home Icon Selected'),
            ),
            CustomNavigationBarItem(
              icon: SvgPicture.asset(Assets.svg.person, semanticsLabel: 'Profile Icon'),
              selectedIcon: SvgPicture.asset(Assets.svg.personSelected, semanticsLabel: 'Profile Icon Selected'),
            ),
            CustomNavigationBarItem(
              icon: SvgPicture.asset(Assets.svg.settings, semanticsLabel: 'Settings Icon'),
              selectedIcon: SvgPicture.asset(Assets.svg.settingsSelected, semanticsLabel: 'Settings Icon Selected'),
            ),
            CustomNavigationBarItem(
              icon: SvgPicture.asset(Assets.svg.favorite, semanticsLabel: 'Favorite Icon'),
              selectedIcon: SvgPicture.asset(Assets.svg.favoriteSelected, semanticsLabel: 'Favorite Icon Selected'),
            ),
          ],
          currentIndex: _currentIndex,
          onTap: (index) {
            setState(() {
              _currentIndex = index;
            });
          },
        ),
      ),
      body: pages()[_currentIndex],
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showDialog<dynamic>(
            context: context,
            builder: (context) => const TodoListDialog(),
          );
        },
        backgroundColor: Palette.blue,
        child: SvgPicture.asset(Assets.svg.plus, semanticsLabel: 'Plus Icon'),
      ),
    );
  }

  List<Widget> pages() {
    return [
      const MyHomePage(),
      const ProfilePage(),
      const SettingsPage(),
      const Favoritepage(),
    ];
  }
}
