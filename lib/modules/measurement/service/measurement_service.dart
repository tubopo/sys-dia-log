import 'package:hive/hive.dart';
import 'package:sys_dia_log/hive/hive_box.dart';
import 'package:sys_dia_log/modules/measurement/models/measurement.dart';

class MeasurementService {
  final Box<Measurement> box = Hive.box(measurementsBox);

  Measurement createNewMeasurement(int sys, int dia, int bpm) {
    final measurement = Measurement.values(
      systolic: sys,
      diastolic: dia,
      bpm: bpm,
    );
    box.add(measurement);
    return measurement;
  }
}
