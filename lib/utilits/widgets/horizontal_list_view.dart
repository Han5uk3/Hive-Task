import 'package:flutter/material.dart';
class channels extends StatelessWidget {
  const channels({super.key, required this.Wcolor, required this.channelname});
final Color Wcolor;
final String channelname;
// final EdgeInsetsDirectional cpad;
  @override
  Widget build(BuildContext context) {
    return Container(
      // padding: cpad,
        height: 165,
        width: 123,
        child: Center(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 20, bottom: 10),
                  child:  Stack(alignment: Alignment.center,children: [
                    CircleAvatar(
                      radius: 25,

                      backgroundColor: Wcolor,
                    ),
                    Positioned(
                        top: 24,
                        left: 25,
                        child: CircleAvatar(
                          radius: 13,
                          backgroundColor: Colors.white,
                          child: Icon(
                            Icons.verified_rounded,
                            color: Colors.green,
                            size: 25,
                          ),
                        ))
                  ]),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 10, left: 10),
                  child: Text(channelname,style: TextStyle(color: Colors.white),
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                Container(margin: EdgeInsets.only(top: 7),
                    width: 100,
                    height: 36,
                    decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.circular(28)),
                    child: TextButton(
                        onPressed: () {},
                        child: Text(
                          "Follow",
                          style: TextStyle(color: Colors.black),
                        )))
              ],
            )),
        decoration: BoxDecoration(
            border: Border.all(width: 1.5,color: Colors.grey),
            borderRadius: BorderRadius.circular(10),
            color: Colors.transparent)
    );
  }
}
