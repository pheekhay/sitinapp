import 'package:hive/hive.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'sitin_table.g.dart';
part 'sitin_table.freezed.dart';

@freezed
@HiveType(typeId: 2)
class SitTable with _$SitTable {
  @JsonSerializable(explicitToJson: true)
  const factory SitTable({
    @HiveField(0) required int tableNo,
    @HiveField(2) required int numberOfSeats,
    @HiveField(3) required double amount,
    @HiveField(4) @Default(TableLocation.indoor) TableLocation tableLocation,
    @HiveField(5) @Default(false) bool isReserved,
  }) = _SitTable;

  factory SitTable.fromJson(Map<String, dynamic> json) => _$SitTableFromJson(json);
}

@HiveType(typeId: 3)
enum TableLocation {
  @HiveField(0)
  indoor,
  @HiveField(1)
  outdoor
}
