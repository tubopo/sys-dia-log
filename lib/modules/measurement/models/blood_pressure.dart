import 'package:hive/hive.dart';

part 'blood_pressure.g.dart';

/// BloodPressure model represents systolic and diastolic values at mmHg,
/// json view:
/// {
///   "systolic": 120,
///   "diastolic": 80,
/// }
@HiveType(typeId: 1, adapterName: 'BloodPressureHiveAdapter')
class BloodPressure extends HiveObject {
  static const String _systolicJsonKey = 'systolic';
  static const String _diastolicJsonKey = 'diastolic';

  @HiveField(0)
  final int systolic;

  @HiveField(1)
  final int diastolic;

  BloodPressure({
    required this.systolic,
    required this.diastolic,
  });

  BloodPressure.fromMap(Map<String, dynamic> json)
      : systolic = json[_systolicJsonKey] as int,
        diastolic = json[_diastolicJsonKey] as int;

  Map<String, dynamic> toMap() {
    return {
      _systolicJsonKey: systolic,
      _diastolicJsonKey: diastolic,
    };
  }
}
