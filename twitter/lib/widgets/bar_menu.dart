  import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/share_state.dart';
import '../screens/search_screen.dart';
import '../screens/notifications_screen.dart';
import '../screens/chats_screen.dart';

// ignore: use_key_in_widget_constructors
class BarMenu extends StatelessWidget {
  final List<Widget> pages = [
    SearchScreen(),
    NotificationsScreen(),
    ChatsScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    final sharedState = Provider.of<SharedState>(context);
    final currentIndex = sharedState.pageNum;

    return BottomNavigationBar(
      currentIndex: currentIndex,
      type: BottomNavigationBarType.fixed,
      onTap: (index) => sharedState.setpageIndex = index,
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.search),
          label: 'Search',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.notifications),
          label: 'Notifications',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.chat),
          label: 'Chats',
        ),
      ],
    );
  }
}
