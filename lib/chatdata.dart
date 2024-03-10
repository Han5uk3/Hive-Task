import 'package:hive/hive.dart';

part 'chatdata.g.dart';

@HiveType(typeId: 3)
class Chatdata {
  Chatdata(
      {required this.content,
      required this.time,
      required this.ky,
      required this.indx});
  @HiveField(0)
  String content;

  @HiveField(1)
  String time;

  @HiveField(2)
  String ky;

  @HiveField(3)
  int indx;
}
