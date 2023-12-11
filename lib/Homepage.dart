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
    return SafeArea(
      child: DefaultTabController(initialIndex: 1,
        length: 4,
        child: Scaffold(
          appBar: AppBar(
            bottom: TabBar(indicatorColor: Colors.white,
              isScrollable: true,
              labelPadding: EdgeInsets.zero,onTap: (value) {

              },
              tabs: <Widget>[
                Container(
                  width: 38,
                  height: 50,
                  alignment: Alignment.center,
                  child: Icon(
                    Icons.groups,
                    color: Colors.white,
                  ),
                ),
                Container(
                    width: 124.2,
                    height: 50,
                    alignment: Alignment.center,
                    child: Text(
                      "Chats",
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    )),
                Container(
                    width: 124.2,
                    height: 50,
                    alignment: Alignment.center,
                    child: Text(
                      "Updates",
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    )),
                Container(
                    width: 124.2,
                    height: 50,
                    alignment: Alignment.center,
                    child: Text(
                      "Calls",
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    )),
              ],
            ),
            title: const Text(
              'WhatsApp',
              style: TextStyle(
                  color: Colors.white,

                  fontSize: 24),
            ),
            iconTheme: const IconThemeData(color: Colors.white),
            backgroundColor: Colors.teal,
            actions: [
              IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.camera_alt_outlined,
                    color: Colors.white,
                  )),
              IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.search,
                    color: Colors.white,
                  )),
              PopupMenuButton<String>(
                itemBuilder: (context) => [
                  const PopupMenuItem(
                    value: 'New group',
                    child: Text('New group'),
                  ),
                  const PopupMenuItem(
                    value: 'New broadcast',
                    child: Text('New broadcast'),
                  ),
                  const PopupMenuItem(
                    value: 'Linked Devices',
                    child: Text('Linked devices'),
                  ),
                  const PopupMenuItem(
                    value: 'Starred messages',
                    child: Text('Starred messages'),
                  ),
                  const PopupMenuItem(
                    value: 'Payment',
                    child: Text('Payment'),
                  ),
                  const PopupMenuItem(
                    value: 'Settings',
                    child: Text('Settings'),
                  ),
                ],
                onSelected: (value) {
                  // Handle menu item selection
                },
              ),
            ],
          ),
          body: TabBarView(children: const [
            Groups(),
            ChatsPage(),
            Updates(),
            Calls(),
          ]),
        ),
      ),
    );
  }
}
