import 'package:flutter/material.dart';
import 'package:food_store/google%20font.dart';
import 'package:food_store/manager/managestate.dart';
import 'package:food_store/pages/cart%20page.dart';
import 'package:food_store/pages/favourite%20page.dart';
import 'package:food_store/pages/homepages.dart';
import 'package:food_store/pages/order%20page.dart';
import 'package:food_store/pages/profile.dart';
import 'package:get/get.dart';

class buttom extends StatelessWidget {
  final ManageState ms = Get.find<ManageState>();

  final List<Widget> _screens = [homepage(), orders(),cart(),fav(),profile(),];

  @override
  Widget build(BuildContext context) {
    return GetBuilder<ManageState>(
      builder: (_) {
        return Scaffold(
          body: _screens[ms.currentIndex],
          bottomNavigationBar: BottomNavigationBar(
            currentIndex: ms.currentIndex,
            onTap: (index) {
              ms.setCurrentIndex(index);
            },
            items: [
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.lightbulb_circle,size: 30,
                  color: ms.currentIndex == 0 ? primaryColor : Colors.grey,
                ),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.location_on,size: 30,
                  color: ms.currentIndex == 1 ? primaryColor : Colors.grey,
                ),
                label: 'Profile',
              ),
              BottomNavigationBarItem(
                icon: Stack(
                  clipBehavior: Clip.none,
                  children: [
                    Icon(
                      Icons.shopping_bag,
                      color: ms.currentIndex == 2 ? primaryColor : Colors.grey,
                    ),
                    Positioned(
                      bottom: 15,
                      left: 17,
                      child: Container(
                        height: 17,
                        width: 17,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: Color(0xffFFC529),
                        ),
                        child: Center(
                          child: Text(
                            '${ms.counter}',  // Update this to show the actual cart count
                            style: mystyle(12, Colors.white, FontWeight.bold),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
                label: 'Cart',
              ),
              BottomNavigationBarItem(
                icon: Stack(clipBehavior: Clip.none,
                    children:[ Icon(
                      Icons.favorite_outlined,
                      color: ms.currentIndex == 3? primaryColor : Colors.grey,
                    ),
                      Positioned(
                        left: 14,bottom: 15,
                        child: Container(
                          height: 17,
                          width: 17,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: Color(0xffFFC529),
                          ),
                          child: Center(
                            child: Text(
                              '${ms.counter2}',  // Update this to show the actual cart count
                              style: mystyle(12, Colors.white, FontWeight.bold),
                            ),
                          ),
                        ),
                      ),
                    ]),
                label: 'Favorites',
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.notifications,
                  color: ms.currentIndex == 4 ? primaryColor : Colors.grey,
                ),
                label: 'Profile',
              ),

            ],
          ),
        );
      },
    );
  }
}
