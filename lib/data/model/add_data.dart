import 'package:hive_flutter/hive_flutter.dart';
part 'add_data.g.dart';
@HiveType(typeId: 1)

class AddData extends HiveObject {
  @HiveField(0)
  String name;
  @HiveField(1)
  String explain;
  @HiveField(2)
  int amount;
  @HiveField(3)
  String IN;
  @HiveField(4)
  DateTime datetime;

  AddData(this.name, this.explain, this.amount, this.IN, this.datetime);
}
