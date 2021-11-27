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
      status: fields[7] as ReservationStatus,
      payment: fields[8] as SitInPayment?,
      restaurantName: fields[9] as String,
      customerStatus: fields[10] as CustomerStatus,
      restaurantPhoto: fields[11] as String,
    );
  }

  @override
  void write(BinaryWriter writer, Reservation obj) {
    writer
      ..writeByte(12)
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
      ..write(obj.status)
      ..writeByte(8)
      ..write(obj.payment)
      ..writeByte(9)
      ..write(obj.restaurantName)
      ..writeByte(10)
      ..write(obj.customerStatus)
      ..writeByte(11)
      ..write(obj.restaurantPhoto);
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

class ReservationStatusAdapter extends TypeAdapter<ReservationStatus> {
  @override
  final int typeId = 4;

  @override
  ReservationStatus read(BinaryReader reader) {
    switch (reader.readByte()) {
      case 0:
        return ReservationStatus.pending;
      case 1:
        return ReservationStatus.completed;
      case 2:
        return ReservationStatus.cancelled;
      default:
        return ReservationStatus.pending;
    }
  }

  @override
  void write(BinaryWriter writer, ReservationStatus obj) {
    switch (obj) {
      case ReservationStatus.pending:
        writer.writeByte(0);
        break;
      case ReservationStatus.completed:
        writer.writeByte(1);
        break;
      case ReservationStatus.cancelled:
        writer.writeByte(2);
        break;
    }
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ReservationStatusAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class CustomerStatusAdapter extends TypeAdapter<CustomerStatus> {
  @override
  final int typeId = 5;

  @override
  CustomerStatus read(BinaryReader reader) {
    switch (reader.readByte()) {
      case 0:
        return CustomerStatus.seated;
      case 1:
        return CustomerStatus.done;
      case 2:
        return CustomerStatus.absent;
      default:
        return CustomerStatus.seated;
    }
  }

  @override
  void write(BinaryWriter writer, CustomerStatus obj) {
    switch (obj) {
      case CustomerStatus.seated:
        writer.writeByte(0);
        break;
      case CustomerStatus.done:
        writer.writeByte(1);
        break;
      case CustomerStatus.absent:
        writer.writeByte(2);
        break;
    }
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is CustomerStatusAdapter &&
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
      status: $enumDecodeNullable(_$ReservationStatusEnumMap, json['status']) ??
          ReservationStatus.pending,
      payment: json['payment'] == null
          ? null
          : SitInPayment.fromJson(json['payment'] as Map<String, dynamic>),
      restaurantName: json['restaurantName'] as String,
      customerStatus: $enumDecodeNullable(
              _$CustomerStatusEnumMap, json['customerStatus']) ??
          CustomerStatus.absent,
      restaurantPhoto: json['restaurantPhoto'] as String,
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
      'status': _$ReservationStatusEnumMap[instance.status],
      'payment': instance.payment?.toJson(),
      'restaurantName': instance.restaurantName,
      'customerStatus': _$CustomerStatusEnumMap[instance.customerStatus],
      'restaurantPhoto': instance.restaurantPhoto,
    };

const _$ReservationStatusEnumMap = {
  ReservationStatus.pending: 'pending',
  ReservationStatus.completed: 'completed',
  ReservationStatus.cancelled: 'cancelled',
};

const _$CustomerStatusEnumMap = {
  CustomerStatus.seated: 'seated',
  CustomerStatus.done: 'done',
  CustomerStatus.absent: 'absent',
};
