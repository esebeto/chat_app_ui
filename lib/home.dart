import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final GlobalKey<ScaffoldState> _globalKey = GlobalKey();

  List<Map<String, dynamic>> users = [
    {
      'name': 'Laura',
      'message': 'Hello, how are you',
      'filename': 'profile1.jpg',
      'msgCount': 0,
    },
    {
      'name': 'Kayla',
      'message': 'Will you visit me',
      'filename': 'profile2.jpg',
      'msgCount': 2,
    },
    {
      'name': 'Mary',
      'message': 'I ate your ...',
      'filename': 'profile3.jpg',
      'msgCount': 6,
    },
    {
      'name': 'Hellen',
      'message': 'Are you with Kayla Again',
      'filename': 'profile4.jpg',
      'msgCount': 0,
    },
    {
      'name': 'Louren',
      'message': 'Barrow Money please',
      'filename': 'profile5.jpg',
      'msgCount': 0,
    },
    {
      'name': 'Laura',
      'message': 'Helle, how are you',
      'filename': 'profile6.jpg',
      'msgCount': 9,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _globalKey,
      backgroundColor: const Color(0x0ff17171),
      body: Stack(
        children: [
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 70, left: 5, right: 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                      onPressed: () {
                        _globalKey.currentState!.openDrawer();
                      },
                      icon: const Icon(
                        Icons.menu,
                        color: Colors.white,
                      ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.search,
                        color: Colors.white,
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 50,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  padding: const EdgeInsets.only(left: 10),
                  children: [
                    TextButton(
                      onPressed: () {},
                      child: const Text(
                        'Messages',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    const SizedBox(width: 35),
                    TextButton(
                      onPressed: () {},
                      child: const Text(
                        'Online',
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 24,
                        ),
                      ),
                    ),
                    const SizedBox(width: 35),
                    TextButton(
                      onPressed: () {},
                      child: const Text(
                        'Groups',
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 24,
                        ),
                      ),
                    ),
                    const SizedBox(width: 35),
                    TextButton(
                      onPressed: () {},
                      child: const Text(
                        'More',
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 24,
                        ),
                      ),
                    ),
                    const SizedBox(width: 35),
                  ],
                ),
              )
            ],
          ),
          Positioned(
            top: 180,
            left: 0,
            right: 0,
            child: Container(
              height: 220,
              decoration: const BoxDecoration(
                color: Color(0xff27c1a9),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(40),
                  topRight: Radius.circular(40),
                ),
              ),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(25, 10, 25, 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          'Favorite contacts',
                          style: TextStyle(color: Colors.white),
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.more_horiz,
                            color: Colors.white,
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 90,
                    child: ListView.builder(
                      padding: const EdgeInsets.only(left: 25),
                      scrollDirection: Axis.horizontal,
                      itemCount: users.length,
                      itemBuilder: (context, index) {
                        return buildContactAvatar(
                            users[index]['filename'], users[index]['name']);
                      },
                    ),
                  )
                ],
              ),
            ),
          ),
          Positioned(
            top: 355,
            left: 0,
            right: 0,
            bottom: 0,
            child: Container(
              padding: const EdgeInsets.only(top: 15),
              height: 200,
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(40),
                  topRight: Radius.circular(40),
                ),
              ),
              child: ListView.builder(
                padding: const EdgeInsets.only(left: 25),
                itemCount: users.length,
                itemBuilder: (context, index) {
                  return buildConversationRow(
                    users[index]['name'],
                    users[index]['message'],
                    users[index]['filename'],
                    users[index]['msgCount'],
                  );
                },
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: SizedBox(
        width: 65,
        height: 65,
        child: FloatingActionButton(
          backgroundColor: const Color(0xff27c1a9),
          child: const Icon(Icons.edit_outlined, size: 30),
          onPressed: () {},
        ),
      ),
      drawer: Drawer(
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.horizontal(
            right: Radius.circular(40),
          ),
        ),
        width: 275,
        backgroundColor: Colors.black26,
        child: Container(
          decoration: const BoxDecoration(
            color: Color(0xf71f1e1e),
          ),
          child: Padding(
            padding: const EdgeInsets.fromLTRB(20, 50, 20, 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Row(
                      children: [
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.arrow_back_ios,
                            color: Colors.white,
                            size: 20,
                          ),
                        ),
                        const SizedBox(height: 56),
                        const Text(
                          'Settings',
                          style: TextStyle(color: Colors.white, fontSize: 16),
                        )
                      ],
                    ),
                    const SizedBox(height: 30),
                    const Row(
                      children: [
                        UserAvatar(filename: 'profile1.jpg'),
                        SizedBox(
                          width: 12,
                        ),
                        Text(
                          'Tom Brenan',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 35),
                    const DrawerItem(title: 'Account', icon: Icons.key),
                    const DrawerItem(title: 'Chats', icon: Icons.chat_bubble),
                    const DrawerItem(
                        title: 'Notifications', icon: Icons.notifications),
                    const DrawerItem(
                        title: 'Data and Storage', icon: Icons.storage),
                    const DrawerItem(title: 'Help', icon: Icons.help),
                    const Divider(
                      color: Colors.green,
                      height: 35,
                    ),
                    const DrawerItem(
                        title: 'Invite a Friend', icon: Icons.people_outline),
                  ],
                ),
                const DrawerItem(title: 'Logout', icon: Icons.logout),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Column buildConversationRow(
      String name, String message, String filename, int msgCount) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                UserAvatar(
                  filename: filename,
                ),
                const SizedBox(width: 15),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      name,
                      style: const TextStyle(color: Colors.black),
                    ),
                    const SizedBox(height: 5),
                    Text(
                      message,
                      style: const TextStyle(color: Colors.black),
                    ),
                  ],
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(right: 25, top: 5),
              child: Column(
                children: [
                  const Text(
                    '10:25',
                    style: TextStyle(fontSize: 10),
                  ),
                  const SizedBox(height: 15),
                  if (msgCount > 0)
                    CircleAvatar(
                      radius: 7,
                      backgroundColor: const Color(0xff27c1a9),
                      child: Text(
                        msgCount.toString(),
                        style:
                            const TextStyle(color: Colors.white, fontSize: 10),
                      ),
                    ),
                ],
              ),
            )
          ],
        ),
        const Divider(indent: 70),
      ],
    );
  }

  Padding buildContactAvatar(String filename, String name) {
    return Padding(
      padding: const EdgeInsets.only(right: 20),
      child: Column(
        children: [
          UserAvatar(filename: filename),
          const SizedBox(
            height: 5,
          ),
          Text(
            name,
            style: const TextStyle(color: Colors.white, fontSize: 16),
          ),
        ],
      ),
    );
  }
}

class DrawerItem extends StatelessWidget {
  final String title;
  final IconData icon;

  const DrawerItem({
    super.key,
    required this.title,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      focusColor: Colors.white,
      child: Padding(
        padding: const EdgeInsets.only(bottom: 30),
        child: Row(
          children: [
            Icon(
              icon,
              color: Colors.white,
              size: 20,
            ),
            const SizedBox(width: 30),
            Text(
              title,
              style: const TextStyle(color: Colors.white, fontSize: 16),
            )
          ],
        ),
      ),
    );
  }
}

class UserAvatar extends StatelessWidget {
  final String filename;
  const UserAvatar({
    super.key,
    required this.filename,
  });

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 30,
      backgroundColor: Colors.white,
      child: CircleAvatar(
        radius: 28,
        backgroundImage: Image.asset('assets/images/$filename').image,
      ),
    );
  }
}
