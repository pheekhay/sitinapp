// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'reservation.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class ReservationAdapter extends TypeAdapter<Reservation> {
  @override
  final int typeId = 1;

  @override
  Reservation read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Reservation(
      id: fields[0] as String,
      customerId: fields[1] as String,
      restaurantId: fields[2] as String,
      customerName: fields[3] as String,
      reservedDate: fields[4] as DateTime,
      price: fields[5] as double,
      table: fields[6] as SitTable,
      cancelled: fields[7] as bool,
      payment: fields[8] as SitInPayment?,
    );
  }

  @override
  void write(BinaryWriter writer, Reservation obj) {
    writer
      ..writeByte(9)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.customerId)
      ..writeByte(2)
      ..write(obj.restaurantId)
      ..writeByte(3)
      ..write(obj.customerName)
      ..writeByte(4)
      ..write(obj.reservedDate)
      ..writeByte(5)
      ..write(obj.price)
      ..writeByte(6)
      ..write(obj.table)
      ..writeByte(7)
      ..write(obj.cancelled)
      ..writeByte(8)
      ..write(obj.payment);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ReservationAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Reservation _$$_ReservationFromJson(Map<String, dynamic> json) =>
    _$_Reservation(
      id: json['id'] as String,
      customerId: json['customerId'] as String,
      restaurantId: json['restaurantId'] as String,
      customerName: json['customerName'] as String,
      reservedDate: DateTime.parse(json['reservedDate'] as String),
      price: (json['price'] as num).toDouble(),
      table: SitTable.fromJson(json['table'] as Map<String, dynamic>),
      cancelled: json['cancelled'] as bool,
      payment: json['payment'] == null
          ? null
          : SitInPayment.fromJson(json['payment'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_ReservationToJson(_$_Reservation instance) =>
    <String, dynamic>{
      'id': instance.id,
      'customerId': instance.customerId,
      'restaurantId': instance.restaurantId,
      'customerName': instance.customerName,
      'reservedDate': instance.reservedDate.toIso8601String(),
      'price': instance.price,
      'table': instance.table.toJson(),
      'cancelled': instance.cancelled,
      'payment': instance.payment?.toJson(),
    };
