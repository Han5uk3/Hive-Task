import 'package:flutter/material.dart';
import 'dart:io';

import 'package:clone_whatsapp/utilits/widgets/horizontal_list_view.dart';
import 'package:image_picker/image_picker.dart';

class Updates extends StatefulWidget {
  const Updates({super.key});

  @override
  State<Updates> createState() => _GroupsState();
}

class _GroupsState extends State<Updates> {
  bool toggle = true;
  bool recent = true;
  List stat = [
    {"name": "Adwaith", "time": "10:15 AM", "image": Colors.blue},
    {"name": "Adwaith", "time": "10:15 AM", "image": Colors.blue},
    {"name": "Adwaith", "time": "10:15 AM", "image": Colors.blue},
    {"name": "Adwaith", "time": "10:15 AM", "image": Colors.blue},
    {"name": "Adwaith", "time": "10:15 AM", "image": Colors.blue},
    {"name": "Adwaith", "time": "10:15 AM", "image": Colors.blue},
    {"name": "Adwaith", "time": "10:15 AM", "image": Colors.blue},
    {"name": "Adwaith", "time": "10:15 AM", "image": Colors.blue},
    {"name": "Adwaith", "time": "10:15 AM", "image": Colors.blue},
    {"name": "Adwaith", "time": "10:15 AM", "image": Colors.blue},
    {"name": "Adwaith", "time": "10:15 AM", "image": Colors.blue},
  ];
List vu =[];
  List chn = [
    {"color": Colors.red, "cname": "Star Sports India"},
    {"color": Colors.lightGreen, "cname": "WhatsApp"},
    {"color": Colors.yellow, "cname": "Github"},
    {"color": Colors.black, "cname": "Behind Talkies"},
    {"color": Colors.deepOrange, "cname": "Rockstar Games"},
    {"color": Colors.blueAccent, "cname": "Team Pahe"},
  ];
  File? img;
  pickImg ()async {
    var temp = await ImagePicker().pickImage(source: ImageSource.camera);
    img =File(temp!.path);
    setState(() {

    });
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: SafeArea(
          top: true,
          bottom: false,
          child: ListView(
            children: [
              ListTile(
                  title: Text(
                    "Status",
                    style: TextStyle(
                        color: Colors.green,
                        fontWeight: FontWeight.bold,
                        fontSize: 22),
                  ),
                  contentPadding: EdgeInsets.only(
                    left: 16.0,
                  ),
                  trailing: PopupMenuButton(

                    itemBuilder: (context) => [
                      PopupMenuItem(
                          value: "Status privacy",
                          child: Text("Status privacy")),
                    ],
                  )),
              ListTile(
                onTap: () {
                  pickImg();
                },
                title: const Text(
                  "My status",
                  style: TextStyle(
                      color: Colors.green,
                      fontSize: 19,
                      fontWeight: FontWeight.bold),
                ),
                subtitle: const Text(
                  "Tap to add status update",
                  style: TextStyle(color: Colors.grey),
                ),
                leading: Container(
                  height: 56,
                  width: 56,
                  child: img == null ?Stack(children: [

                    Positioned(
                        child: CircleAvatar(
                      radius: 25,
                      backgroundColor: Colors.blue,
                    )
                    ),
                    Positioned(
                        top: 24,
                        left: 25,
                        child: CircleAvatar(
                          radius: 14,
                          backgroundColor: Colors.green,
                          child: Icon(
                            Icons.add,
                            color: Colors.white,
                            size: 23,
                          ),
                        ))
                  ])
                      : Stack(alignment: Alignment.center,children: [

                    Positioned(
                        child: CircleAvatar(
                          radius: 25,
                          backgroundColor: Colors.green,
                        )
                    ),
                    Positioned(
                        child: CircleAvatar(
                          radius: 20,
                          backgroundImage: FileImage(img!),
                        ))
                  ]),

                ),
              ),

              Visibility(visible: recent,
                child: Container(
                  height: 30,
                  child: Row(
                    children: [
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.only(left: 16),
                          child: Text(
                            "Recent Updates",
                            style: TextStyle(color: Colors.grey),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Visibility(visible: recent,
                child: ListView.builder(
                  itemCount: stat.length,
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    return ListTile(
                      minVerticalPadding: 10,
                      onTap: (){
                        Map input1 = {"name" : stat[index]["name"],"time" : stat[index]["time"],"color" : stat[index]["image"] };
                        setState(() {
                          vu.add(input1);
                          stat.removeAt(index);
                          if(index==stat.length-1){
                            recent = !recent;
                          }
                        });
                      },
                      leading: CircleAvatar(
                        radius: 25,
                        backgroundColor: stat[index]["image"],
                      ),
                      title: Text(
                        "${stat[index]["name"]}",
                        style: const TextStyle(
                            fontSize: 19,
                            color: Colors.green,
                            fontWeight: FontWeight.bold),
                      ),
                      subtitle: Text(
                        "${stat[index]["time"]}",
                        style: const TextStyle(
                          color: Colors.grey,
                        ),
                      ),
                    );
                  },
                ),
              ),


              Container(
                height: 30,
                child: Row(
                  children: [
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 16),
                        child: Text(
                          "Viewed Updates",
                          style: TextStyle(color: Colors.grey),
                        ),
                      ),
                    ),
                    IconButton(
                      alignment: Alignment.center,
                      highlightColor: Colors.transparent,
                      onPressed: () {
                        toggle = !toggle;
                        setState(() {});
                      },
                      icon: toggle
                          ? const Icon(
                              Icons.keyboard_arrow_down_sharp,
                              size: 30,
                              color: Colors.grey,
                            )
                          : const Icon(
                              Icons.keyboard_arrow_up_sharp,
                              size: 30,
                              color: Colors.grey,
                            ),
                    )
                  ],
                ),
              ),
              Visibility(
                visible: !toggle,
                child: ListView.builder(
                  itemCount: vu.length,
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    return ListTile(

                      minVerticalPadding: 10,
                      leading: CircleAvatar(
                        radius: 25,
                        backgroundColor: vu[index]["color"],
                      ),
                      title: Text(
                        "${vu[index]["name"]}",
                        style: const TextStyle(
                            fontSize: 19,
                            color: Colors.green,
                            fontWeight: FontWeight.bold),
                      ),
                      subtitle: Text(
                        "${vu[index]["time"]}",
                        style: const TextStyle(
                          color: Colors.grey,
                        ),
                      ),
                    );
                  },
                ),
              ),
              Divider(color: Colors.grey.shade200, thickness: 1),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Expanded(
                    child: ListTile(
                      title: Text(
                        "Channels",
                        style: TextStyle(
                            color: Colors.green,
                            fontWeight: FontWeight.bold,
                            fontSize: 22),
                      ),
                      contentPadding: EdgeInsets.only(
                        left: 16.0,
                      ),
                      subtitle: Text(
                          "Stay updated on topics that matter to you. Find channels to follow below",style: TextStyle(color: Colors.grey),),
                    ),
                  ),
                  PopupMenuButton(
                    icon: Icon(Icons.add, color: Colors.grey, size: 30),
                    itemBuilder: (context) => [
                      PopupMenuItem(
                          value: "Create channel",
                          child: Text("Create channel")),
                      PopupMenuItem(
                          value: "Find channels", child: Text("Find channels"))
                    ],
                  ),
                ],
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                height: 170,
                child: ListView.builder(
                  itemCount: chn.length,
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) => Padding(
                    padding: EdgeInsetsDirectional.only(
                      start: index == 0 ? 16 : 5,
                      end: index == chn.length - 1 ? 16 : 5,
                    ),
                    child: channels(
                      Wcolor: chn[index]["color"],
                      // cpad: EdgeInsetsDirectional.only(start: index==0?16:5,end: index==chn.length-1?16:5, ),
                      channelname: chn[index]["cname"],
                    ),
                  ),
                ),
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Container(
                    margin: EdgeInsets.only(left: 16, top: 20),
                    decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.circular(28)),
                    height: 50,
                    width: 123,
                    child: TextButton(
                        onPressed: () {},
                        child: Text(
                          "Explore Now",
                          style: TextStyle(color: Colors.white),
                        ))),
              ),
              SizedBox(
                height: 135,
              ),
            ],
          )),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 20),
            child: FloatingActionButton(
                backgroundColor: Colors.grey,
                onPressed: () {},
                child: Icon(
                  Icons.edit,
                  color: Colors.white,
                ),
                mini: true),
          ),
          FloatingActionButton(
            backgroundColor: Colors.green,
            onPressed: () {},
            child: Icon(
              Icons.camera_alt_rounded,
              color: Colors.white,
            ),
          ),
        ],
      ),
    ));
  }
}
