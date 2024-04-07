import 'package:flutter/material.dart';
import 'package:projectflutter/Menu/menuPage.dart';

import 'Friends/friendsPage.dart';
import 'Home/homePage.dart';
import 'Notification/notificationPage.dart';
import 'Video/videoPage.dart';
import 'ecommerce/shoppingPage.dart';



Future<void> main() async {
   WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> with SingleTickerProviderStateMixin{

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
            seedColor: const Color.fromARGB(255, 48, 80, 239)),
        useMaterial3: true,
      ),
      home:const MyHomePage(title: 'Facebook',),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var currentTab = 0;
  // final  iconsSet1=(Icons.home_filled,color: Colors.blueAccent)as IconData;
  // final iconsSet2=(Icons.home_outlined,color: Colors.black)as IconData;
  final PageStorageBucket bucket = PageStorageBucket();
  Widget currentScreen = const HomePage();
  var color1 = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,

      body:

      SafeArea(
        child: Center(
          child: PageStorage(
            bucket: bucket,
            child: currentScreen,
          ),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        elevation: 0.0,
        clipBehavior: Clip.antiAliasWithSaveLayer,
        shape: const CircularNotchedRectangle(),
        height: 60,
        // color: Colors.grey.shade500,
        child: Row(
          mainAxisAlignment:MainAxisAlignment.spaceEvenly,
          children: [
            Expanded(
              child: MaterialButton(
                onPressed: () {
                  setState(() {
                    currentScreen = const HomePage();
                    currentTab = 0;
                  });
                },
                child: Icon(
                  currentTab == 0 ? Icons.home : Icons.home_outlined,
                  color: currentTab == 0
                      ? const Color.fromARGB(255, 48, 80, 239)
                      : Colors.black54,
                  size: 30,
                ),
              ),
            ),
            Expanded(
              child: MaterialButton(
                onPressed: () {
                  setState(() {
                    currentScreen = const FriendsPage();
                    currentTab = 1;
                  });
                },
                child: Icon(
                  currentTab == 1
                      ? Icons.people_alt_sharp
                      : Icons.people_outline_rounded,
                  color: currentTab == 1
                      ? const Color.fromARGB(255, 48, 80, 239)
                      : Colors.black54,
                  size: 30,
                ),
              ),
            ),
             Expanded(
              child: MaterialButton(
                onPressed: () {
                  setState(() {
                    currentScreen = VideosScreen();
                    currentTab = 2;
                  });
                },
                child: Icon(
                    currentTab == 2
                        ? Icons.ondemand_video_rounded
                        : Icons.personal_video_rounded,
                    color: currentTab == 2
                        ? const Color.fromARGB(255, 48, 80, 239)
                        : Colors.black54,
                    size: 30),
              ),
            ),
             Expanded(
              child: MaterialButton(
                onPressed: () {
                  setState(() {
                    currentScreen = const ShoppingPage();
                    currentTab = 3;
                  });
                },
                child: Icon(
                    currentTab == 3
                        ? Icons.shopping_cart_rounded
                        : Icons.shopping_cart_checkout_rounded,
                    color: currentTab == 3
                        ? const Color.fromARGB(255, 48, 80, 239)
                        : Colors.black54,
                    size: 30),
              ),
            ),
             Expanded(
              child: MaterialButton(
                onPressed: () {
                  setState(() {
                    currentScreen = const NotificationPage();
                    currentTab = 4;
                  });
                },
                child: Icon(
                    currentTab == 4
                        ? Icons.notifications_rounded
                        : Icons.notifications_none_rounded,
                    color: currentTab == 4
                        ? const Color.fromARGB(255, 48, 80, 239)
                        : Colors.black54,
                    size: 30),
              ),
            ),
             Expanded(
              child: MaterialButton(
                onPressed: () {
                  setState(() {
                    currentScreen = const MenuPage();
                    currentTab = 5;
                  });
                },
                child: Icon(
                    currentTab == 5
                        ? Icons.menu_rounded
                        : Icons.menu_rounded,
                    color: currentTab == 5
                        ? const Color.fromARGB(255, 48, 80, 239)
                        : Colors.black54,
                    size: 30),
              ),
            )
          ],
        ),
      ),
    );
  }
}
