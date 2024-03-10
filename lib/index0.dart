import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:intl/intl.dart';

import 'Boxdef.dart';
import 'chatdata.dart';

class ad extends StatefulWidget {
  const ad({super.key});

  @override
  State<ad> createState() => _adState();
}

List<Map> datas = [
  {
    "name": "Adwaith",
    "text": "Evde macha?",
    "time": "8:30 AM",
    "profile": "A",
    "msgcount": "2"
  },
  {
    "name": "Anees Rahman",
    "text": "GitHub ilekk engane file upload cheyya enn ariyo?",
    "time": "6:57 PM",
    "profile": "AR",
    "msgcount": "1"
  },
  {
    "name": "Basim Thwalha",
    "text": "Basim Thwalha just joined WhatsApp",
    "time": "12:05 PM",
    "profile": "BT",
    "msgcount": "1"
  },
  {
    "name": "Saheer",
    "text": "Evde ethi?",
    "time": "10:30 AM",
    "profile": "S",
    "msgcount": "2"
  },
  {
    "name": "Nafih",
    "text": "screenshot69.jpeg",
    "time": "11:45 AM",
    "profile": "N",
    "msgcount": "4"
  },
  {
    "name": "Naseef K",
    "text": "Genshin? ",
    "time": "8:30 PM",
    "profile": "NK",
    "msgcount": "2"
  },
  {
    "name": "FLUTTER OCTOBER BATCH",
    "text": "Akshaya Futura Labs added +91 8129965763",
    "time": "Yesterday",
    "profile": "FOB",
    "msgcount": "1"
  },
  {
    "name": "Janatha Bazar",
    "text": "Photo",
    "time": "9:07 AM",
    "profile": "JB",
    "msgcount": "0"
  },
  {
    "name": "Akshay Krishnan",
    "text": "Thanks",
    "time": "11: 55 PM",
    "profile": "JB",
    "msgcount": "1"
  },
  {
    "name": "Janata Bazar",
    "text": "Photo",
    "time": "9:07 AM",
    "profile": "JB",
    "msgcount": "0"
  },
  {
    "name": "Jantha Bazar",
    "text": "Photo",
    "time": "9:07 AM",
    "profile": "JB",
    "msgcount": "0"
  },
  {
    "name": "Janatha Baar",
    "text": "Photo",
    "time": "9:07 AM",
    "profile": "JB",
    "msgcount": "0"
  },
  {
    "name": "Janatha Baza",
    "text": "Photo",
    "time": "9:07 AM",
    "profile": "JB",
    "msgcount": "0"
  },
];

List booli = [
  true,
  true,
  true,
  true,
  false,
  true,
  true,
  false,
  true,
  false,
  false,
  false,
  false
];
List cnt = [
  true,
  false,
  false,
  true,
  true,
  false,
  true,
  true,
  false,
  true,
  false,
  false,
  false
];
List boolimg = [
  true,
  true,
  true,
  true,
  true,
  true,
  false,
  false,
  false,
  false,
  false,
  false,
  false
];

List lettercolors = [
  Colors.black,
  Colors.black,
  Colors.white,
  Colors.teal,
  Colors.red,
  Colors.black,
  Colors.lightBlueAccent,
  Colors.white,
  Colors.white,
  Colors.white,
  Colors.white,
  Colors.white,
  Colors.white,
];
List circlecolors = [
  Colors.white,
  Colors.purple,
  Colors.black,
  Colors.white,
  Colors.black,
  Colors.red,
  Colors.white,
  Colors.white,
  Colors.white,
  Colors.white,
  Colors.white,
  Colors.white,
  Colors.white,
];

class _adState extends State<ad> {
  TextEditingController cont = TextEditingController();
  int ind = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.white),
        leadingWidth: 20,
        backgroundColor: Colors.teal,
        title: Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 10),
              child: CircleAvatar(
                radius: 18,
                backgroundColor: circlecolors[0],
                child: Text(
                  "${datas[0]["profile"]}",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: lettercolors[0]),
                ),
              ),
            ),
            Text(
              "${datas[0]["name"]}",
              style: const TextStyle(
                  fontSize: 18,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            ),
          ],
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.videocam,
                color: Colors.white,
              )),
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.phone,
                color: Colors.white,
              )),
          PopupMenuButton<String>(
            color: Colors.black,
            iconColor: Colors.white,
            itemBuilder: (context) => [
              const PopupMenuItem(
                value: 'View contact',
                child: Text(
                  'View contact',
                  style: TextStyle(color: Colors.white),
                ),
              ),
              const PopupMenuItem(
                value: 'Media, links and docs',
                child: Text(
                  'Media, links and docs',
                  style: TextStyle(color: Colors.white),
                ),
              ),
              const PopupMenuItem(
                value: 'Search',
                child: Text(
                  'Search',
                  style: TextStyle(color: Colors.white),
                ),
              ),
              const PopupMenuItem(
                value: 'Mute notifications',
                child: Text(
                  'Mute notifications',
                  style: TextStyle(color: Colors.white),
                ),
              ),
              const PopupMenuItem(
                value: 'Disappearing messages',
                child: Text(
                  'Disappearing messages',
                  style: TextStyle(color: Colors.white),
                ),
              ),
              const PopupMenuItem(
                value: 'Wallpaper',
                child: Text(
                  'Wallpaper',
                  style: TextStyle(color: Colors.white),
                ),
              ),
              PopupMenuItem(
                value: 'Clear chat',
                child: const Text(
                  'Clear chat for everyone',
                  style: TextStyle(color: Colors.white),
                ),
                onTap: () {
                  Chatbox.clear();
                  setState(() {});
                },
              ),
              const PopupMenuItem(
                value: 'More',
                child: Row(
                  children: [
                    Expanded(
                        child: Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              "More",
                              style: TextStyle(color: Colors.white),
                            ))),
                    InkWell(
                        child: Icon(
                      CupertinoIcons.right_chevron,
                      size: 15,
                      color: Colors.grey,
                    ))
                  ],
                ),
              ),
            ],
            onSelected: (value) {
              // Handle menu item selection
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: SizedBox(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height - 175,
                child: ListView.builder(
                    itemCount: Chatbox.length,
                    shrinkWrap: true,
                    itemBuilder: (context, index) {
                      Chatdata dataitem = Chatbox.getAt(index);
                      ind = dataitem.indx;
                      if (dataitem.ky == "1") {
                        return Align(
                          alignment: Alignment.centerRight,
                          child: Container(
                            margin: const EdgeInsets.symmetric(
                                vertical: 4, horizontal: 8),
                            padding: const EdgeInsets.all(8),
                            decoration: BoxDecoration(
                                color: Colors.teal,
                                borderRadius: BorderRadius.circular(12)),
                            child: Padding(
                              padding: const EdgeInsets.only(left: 3),
                              child: IntrinsicWidth(
                                child: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    Expanded(
                                      child: Text(
                                        softWrap: true,
                                        overflow: TextOverflow.clip,
                                        textAlign: TextAlign.justify,
                                        dataitem.content,
                                        style: const TextStyle(
                                            fontSize: 20, color: Colors.white),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 3),
                                      child: Text(
                                        dataitem.time,
                                        style: const TextStyle(
                                            fontSize: 14, color: Colors.white),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        );
                      } else {
                        return Align(
                          alignment: Alignment.centerLeft,
                          child: Container(
                            margin: const EdgeInsets.symmetric(
                                vertical: 4, horizontal: 8),
                            padding: const EdgeInsets.all(8),
                            decoration: BoxDecoration(
                                color: Colors.grey,
                                borderRadius: BorderRadius.circular(12)),
                            child: Padding(
                              padding: const EdgeInsets.only(left: 3),
                              child: IntrinsicWidth(
                                child: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    Expanded(
                                      child: Text(
                                        dataitem.content,
                                        overflow: TextOverflow.clip,
                                        maxLines: 10,
                                        style: const TextStyle(
                                            overflow: TextOverflow.clip,
                                            fontSize: 20,
                                            color: Colors.black),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 3),
                                      child: Text(
                                        dataitem.time,
                                        style: const TextStyle(
                                            fontSize: 14, color: Colors.black),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        );
                      }
                    }),
              ),
            ),
            Row(
              children: [
                Expanded(
                    child: TextField(
                  controller: cont,
                  onEditingComplete: () {
                    ind++;
                    DateTime now = DateTime.now();
                    String formattedDate = DateFormat('kk:mm').format(now);
                    Chatbox.put(
                      "$ind",
                      Chatdata(
                        content: cont.text,
                        time: formattedDate,
                        ky: "1",
                        indx: ind,
                      ),
                    );
                    cont.clear();
                    setState(() {});
                  },
                  cursorWidth: 3,
                  style: const TextStyle(color: Colors.white),
                  cursorColor: Colors.green,
                  decoration: InputDecoration(
                      hintText: "Message",
                      hintStyle: const TextStyle(color: Colors.grey),
                      filled: true,
                      fillColor: Colors.grey.shade600,
                      focusedBorder: OutlineInputBorder(
                          borderSide:
                              const BorderSide(color: Colors.transparent),
                          borderRadius: BorderRadius.circular(30)),
                      border: OutlineInputBorder(
                          borderSide:
                              const BorderSide(color: Colors.transparent),
                          borderRadius: BorderRadius.circular(30)),
                      prefixIcon: const Icon(
                        CupertinoIcons.smiley_fill,
                        color: Colors.white,
                      )),
                )),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 3),
                  child: InkWell(
                      splashFactory: InkRipple.splashFactory,
                      onTap: () {
                        ind++;
                        DateTime now = DateTime.now();
                        String formattedDate = DateFormat('kk:mm').format(now);
                        Chatbox.put(
                          "$ind",
                          Chatdata(
                            content: cont.text,
                            time: formattedDate,
                            ky: "1",
                            indx: ind,
                          ),
                        );
                        cont.clear();
                        setState(() {});
                      },
                      child: const CircleAvatar(
                        backgroundColor: Colors.teal,
                        radius: 30,
                        child: Icon(
                          Icons.send,
                          size: 25,
                          color: Colors.white,
                        ),
                      )),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
