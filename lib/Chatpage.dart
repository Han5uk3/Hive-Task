import 'package:clone_whatsapp/chatdata.dart';
import 'package:clone_whatsapp/index0.dart';
import 'package:clone_whatsapp/index1.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

import 'Boxdef.dart';

class ChatsPage extends StatefulWidget {
  const ChatsPage({super.key});

  @override
  State<ChatsPage> createState() => _StatusState();
}

class _StatusState extends State<ChatsPage> {
  Chatdata inte = Chatbox.getAt(0);
  Chatdata ante = Chatbox.getAt(1);

  List booli = [
    true,
    true,
  ];
  List cnt = [
    true,
    true,
  ];
  List boolimg = [
    true,
    true,
  ];

  List lettercolors = [
    Colors.black,
    Colors.black,
  ];
  List circlecolors = [
    Colors.white,
    Colors.purple,
  ];

  @override
  Widget build(BuildContext context) {
    List<Map> datas = [
      {
        "name": "Adwaith",
        "text": inte.content,
        "time": inte.time,
        "profile": "A",
        "msgcount": "2"
      },
      {
        "name": "Anees Rahman",
        "text": ante.content,
        "time": ante.time,
        "profile": "AR",
        "msgcount": "1"
      },
    ];

    return Scaffold(
        backgroundColor: Colors.black,
        body: ListView.builder(
          shrinkWrap: true,
          itemCount: datas.length + 1,
          scrollDirection: Axis.vertical,
          itemBuilder: (context, index) {
            if (index < datas.length) {
              return ListTile(
                  onTap: () {
                    if (index == 0) {
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const ad(),
                      ));
                    }
                    if (index == 1) {
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const ar(),
                      ));
                    }
                  },
                  minVerticalPadding: 10,
                  leading: CircleAvatar(
                    backgroundColor: circlecolors[index],
                    child: Text(
                      "${datas[index]["profile"]}",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: lettercolors[index]),
                    ),
                  ),
                  title: Text(
                    "${datas[index]["name"]}",
                    style: const TextStyle(
                        fontSize: 18,
                        color: Colors.green,
                        fontWeight: FontWeight.bold),
                  ),
                  subtitle: booli[index]
                      ? Text(
                          "${datas[index]["text"]}",
                          style:
                              const TextStyle(fontSize: 15, color: Colors.grey),
                          overflow: TextOverflow.ellipsis,
                        )
                      : Row(
                          children: [
                            const Icon(Icons.photo_sharp,
                                color: Colors.grey, size: 20),
                            Text(
                              "${datas[index]["text"]}",
                              style: const TextStyle(
                                  fontSize: 15, color: Colors.grey),
                              overflow: TextOverflow.ellipsis,
                            ),
                          ],
                        ),
                  trailing: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 7, bottom: 6),
                        child: cnt[index]
                            ? Text("${datas[index]["time"]}",
                                style: const TextStyle(color: Colors.grey))
                            : Text("${datas[index]["time"]}",
                                style: const TextStyle(color: Colors.green)),
                      ),
                      cnt[index]
                          ? const CircleAvatar(
                              backgroundColor: Colors.transparent,
                              radius: 9,
                            )
                          : CircleAvatar(
                              backgroundColor: Colors.green,
                              radius: 9,
                              child: Text(
                                "${datas[index]["msgcount"]}",
                                style: const TextStyle(
                                    color: Colors.white,
                                    fontSize: 13,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                    ],
                  ));
            } else {
              return const Center(
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 20, bottom: 10),
                      child: Text(
                        'Tap and hold a chat for more options',
                        style: TextStyle(
                            color: Colors.grey,
                            fontWeight: FontWeight.bold,
                            fontSize: 12),
                      ),
                    ),
                    Padding(
                        padding: EdgeInsets.only(bottom: 10),
                        child: Divider(
                          thickness: 0.5,
                          color: Colors.grey,
                        )),
                    Padding(
                      padding:
                          EdgeInsets.only(left: 55, right: 55, bottom: 100),
                      child: Row(
                        children: [
                          Icon(
                            CupertinoIcons.lock_fill,
                            color: Colors.grey,
                            size: 12,
                          ),
                          Text(
                            " Your personal messages are ",
                            style: TextStyle(color: Colors.grey, fontSize: 12),
                          ),
                          Text(
                            "end-to-end encrypted",
                            style: TextStyle(color: Colors.green, fontSize: 12),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              );
            }
          },
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          backgroundColor: Colors.green,
          child: const Icon(
            Icons.message,
            color: Colors.black,
          ),
        ));
  }
}
