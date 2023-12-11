import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';


class ChatsPage extends StatefulWidget {
  const ChatsPage({super.key});

  @override
  State<ChatsPage> createState() => _StatusState();
}

class _StatusState extends State<ChatsPage> {

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

  List booli = [true, true, true, true, false, true, true, false, true, false, false, false, false];
  List cnt = [true, false, false, true, true, false, true, true, false, true, false, false, false];
  List boolimg = [true, true, true, true, true, true, false, false, false, false, false, false, false];

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

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: ListView.builder(
        shrinkWrap: true,
    itemCount: datas.length+1
        ,scrollDirection: Axis.vertical,
    itemBuilder: (context, index) {
      if (index < datas.length) {
        return ListTile(
          onTap: (){},
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
              style: const TextStyle(
                  fontSize: 15, color: Colors.grey),
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
      }
      else {
         return const Center(
           child: Column(
             children: [
               Padding(
                 padding: EdgeInsets.only(top: 20,bottom: 10),
                 child: Text(
                  'Tap and hold a chat for more options',
                  style: TextStyle(color: Colors.grey,fontWeight: FontWeight.bold,fontSize: 12),
        ),
               ),
               Padding(
                 padding: EdgeInsets.only(bottom: 10),
                 child: Divider(thickness: 0.5,color: Colors.grey,
               )
               ),
               Padding(
                 padding: EdgeInsets.only(left: 55,right: 55,bottom: 100),
                 child: Row(
                   children: [
                     Icon(CupertinoIcons.lock_fill,color: Colors.grey,size: 12,),
                     Text(" Your personal messages are ",style: TextStyle(color: Colors.grey,fontSize: 12),),
                     Text("end-to-end encrypted",style: TextStyle(color: Colors.green,fontSize: 12),),
                 ],),
               )
             ],
           ),
         );
      }
    },
      ),
      floatingActionButton: FloatingActionButton(onPressed: (){},backgroundColor: Colors.green,child: const Icon(Icons.message,color: Colors.white,),)
    );
  }
}
