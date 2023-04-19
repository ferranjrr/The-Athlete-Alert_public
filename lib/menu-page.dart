import 'package:flutter/material.dart';
import 'search-user.dart';
import 'add-friends.dart';

class NavDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        physics: BouncingScrollPhysics(),
        shrinkWrap: true,
        padding: EdgeInsets.zero,
        children: <Widget>[
          const DrawerHeader(
            decoration: BoxDecoration(
                color: Colors.blueAccent,
                image: DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage('assets/images/waves2.jpg'))),
            child: Text(
              'Menu',
              style: TextStyle(color: Colors.greenAccent, fontSize: 25),
            ),
          ),
          ListTile(
            iconColor: Colors.lightBlueAccent,
            leading: Icon(Icons.search),
            title: Text('Search Users'),
            onTap: () => {
            Navigator.push(context,
            MaterialPageRoute(builder: (context) {
            return SearchFriendsPage();
            },
            ),
            ),
            },
          ),
          ListTile(
            iconColor: Colors.lime,
            leading: Icon(Icons.people),
            title: Text('Friend Requests'),
            onTap: () => {
            Navigator.push(context,
            MaterialPageRoute(builder: (context) {
            return FriendsPage();
            },
            ),
            ),
            },
          ),
          ListTile(
            iconColor: Colors.red,
            leading: Icon(Icons.exit_to_app),
            title: Text('Logout'),
            onTap: () => {Navigator.of(context).pop()},
          ),
        ],
      ),
    );
  }
}