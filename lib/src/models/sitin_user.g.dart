// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sitin_user.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class CustomerAdapter extends TypeAdapter<Customer> {
  @override
  final int typeId = 0;

  @override
  Customer read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Customer(
      id: fields[0] as String,
      name: fields[1] as String?,
      phoneNumber: fields[2] as String?,
      reservations: (fields[3] as List?)?.cast<Reservation>(),
      isAnonymous: fields[4] as bool,
      email: fields[5] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, Customer obj) {
    writer
      ..writeByte(6)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.name)
      ..writeByte(2)
      ..write(obj.phoneNumber)
      ..writeByte(3)
      ..write(obj.reservations)
      ..writeByte(4)
      ..write(obj.isAnonymous)
      ..writeByte(5)
      ..write(obj.email);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is CustomerAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Customer _$$_CustomerFromJson(Map<String, dynamic> json) => _$_Customer(
      id: json['id'] as String,
      name: json['name'] as String?,
      phoneNumber: json['phoneNumber'] as String?,
      reservations: (json['reservations'] as List<dynamic>?)
          ?.map((e) => Reservation.fromJson(e as Map<String, dynamic>))
          .toList(),
      isAnonymous: json['isAnonymous'] as bool? ?? false,
      email: json['email'] as String?,
    );

Map<String, dynamic> _$$_CustomerToJson(_$_Customer instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'phoneNumber': instance.phoneNumber,
      'reservations': instance.reservations?.map((e) => e.toJson()).toList(),
      'isAnonymous': instance.isAnonymous,
      'email': instance.email,
    };
