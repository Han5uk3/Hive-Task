// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chatdata.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class ChatdataAdapter extends TypeAdapter<Chatdata> {
  @override
  final int typeId = 3;

  @override
  Chatdata read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Chatdata(
      content: fields[0] as String,
      time: fields[1] as String,
      ky: fields[2] as String,
      indx: fields[3] as int,
    );
  }

  @override
  void write(BinaryWriter writer, Chatdata obj) {
    writer
      ..writeByte(4)
      ..writeByte(0)
      ..write(obj.content)
      ..writeByte(1)
      ..write(obj.time)
      ..writeByte(2)
      ..write(obj.ky)
      ..writeByte(3)
      ..write(obj.indx);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ChatdataAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
