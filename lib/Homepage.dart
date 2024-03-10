import 'package:flutter/material.dart';
import 'package:clone_whatsapp/Callspage.dart';
import 'package:clone_whatsapp/Updatespage.dart';
import 'package:clone_whatsapp/Groupspage.dart';
import 'package:clone_whatsapp/Chatpage.dart';

class WhatHome extends StatefulWidget {
  const WhatHome({super.key});

  @override
  State<WhatHome> createState() => _WhatHomeState();
}

class _WhatHomeState extends State<WhatHome>
    with SingleTickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 1,
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          bottom: TabBar(
            indicatorColor: Colors.white,
            isScrollable: true,
            physics: const NeverScrollableScrollPhysics(),
            labelPadding: EdgeInsets.zero,
            onTap: (value) {},
            tabAlignment: TabAlignment.center,
            tabs: <Widget>[
              const Icon(
                Icons.groups,
                color: Colors.black,
              ),
              Container(
                  width: 124.2,
                  height: 50,
                  alignment: Alignment.center,
                  child: const Text(
                    "Chats",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  )),
              Container(
                  width: 124.2,
                  height: 50,
                  alignment: Alignment.center,
                  child: const Text(
                    "Updates",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  )),
              Container(
                  width: 124.2,
                  height: 50,
                  alignment: Alignment.center,
                  child: const Text(
                    "Calls",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  )),
            ],
          ),
          title: const Text(
            'WhatsApp',
            style: TextStyle(color: Colors.black, fontSize: 24),
          ),
          iconTheme: const IconThemeData(color: Colors.white),
          backgroundColor: Colors.teal,
          actions: [
            IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.camera_alt_outlined,
                  color: Colors.black,
                )),
            IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.search,
                  color: Colors.black,
                )),
            PopupMenuButton<String>(
              color: Colors.black,
              iconColor: Colors.black,
              itemBuilder: (context) => [
                const PopupMenuItem(
                  value: 'New group',
                  child: Text(
                    'New group',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                const PopupMenuItem(
                  value: 'New broadcast',
                  child: Text(
                    'New broadcast',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                const PopupMenuItem(
                  value: 'Linked Devices',
                  child: Text(
                    'Linked devices',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                const PopupMenuItem(
                  value: 'Starred messages',
                  child: Text(
                    'Starred messages',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                const PopupMenuItem(
                  value: 'Payment',
                  child: Text(
                    'Payment',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                const PopupMenuItem(
                  value: 'Settings',
                  child: Text(
                    'Settings',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ],
              onSelected: (value) {
                // Handle menu item selection
              },
            ),
          ],
        ),
        body: const TabBarView(children: [
          Groups(),
          ChatsPage(),
          Updates(),
          Calls(),
        ]),
      ),
    );
  }
}
