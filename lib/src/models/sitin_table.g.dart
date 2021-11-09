// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sitin_table.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class SitTableAdapter extends TypeAdapter<SitTable> {
  @override
  final int typeId = 2;

  @override
  SitTable read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return SitTable(
      tableNo: fields[0] as int,
      numberOfSeats: fields[2] as int,
      amount: fields[3] as double,
      tableLocation: fields[4] as TableLocation,
      isReserved: fields[5] as bool,
    );
  }

  @override
  void write(BinaryWriter writer, SitTable obj) {
    writer
      ..writeByte(5)
      ..writeByte(0)
      ..write(obj.tableNo)
      ..writeByte(2)
      ..write(obj.numberOfSeats)
      ..writeByte(3)
      ..write(obj.amount)
      ..writeByte(4)
      ..write(obj.tableLocation)
      ..writeByte(5)
      ..write(obj.isReserved);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is SitTableAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class TableLocationAdapter extends TypeAdapter<TableLocation> {
  @override
  final int typeId = 3;

  @override
  TableLocation read(BinaryReader reader) {
    switch (reader.readByte()) {
      case 0:
        return TableLocation.indoor;
      case 1:
        return TableLocation.outdoor;
      default:
        return TableLocation.indoor;
    }
  }

  @override
  void write(BinaryWriter writer, TableLocation obj) {
    switch (obj) {
      case TableLocation.indoor:
        writer.writeByte(0);
        break;
      case TableLocation.outdoor:
        writer.writeByte(1);
        break;
    }
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is TableLocationAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SitTable _$$_SitTableFromJson(Map<String, dynamic> json) => _$_SitTable(
      tableNo: json['tableNo'] as int,
      numberOfSeats: json['numberOfSeats'] as int,
      amount: (json['amount'] as num).toDouble(),
      tableLocation:
          $enumDecodeNullable(_$TableLocationEnumMap, json['tableLocation']) ??
              TableLocation.indoor,
      isReserved: json['isReserved'] as bool? ?? false,
    );

Map<String, dynamic> _$$_SitTableToJson(_$_SitTable instance) =>
    <String, dynamic>{
      'tableNo': instance.tableNo,
      'numberOfSeats': instance.numberOfSeats,
      'amount': instance.amount,
      'tableLocation': _$TableLocationEnumMap[instance.tableLocation],
      'isReserved': instance.isReserved,
    };

const _$TableLocationEnumMap = {
  TableLocation.indoor: 'indoor',
  TableLocation.outdoor: 'outdoor',
};
