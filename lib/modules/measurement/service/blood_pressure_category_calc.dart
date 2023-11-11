import 'package:sys_dia_log/modules/measurement/models/blood_pressure_category.dart';

///Optimal Blood Pressure:
// Systolic: Less than 120 mm Hg
// Diastolic: Less than 80 mm Hg
//
// Normal Blood Pressure:
// Systolic: 120-129 mm Hg
// Diastolic: 80-84 mm Hg
//
// High-Normal Blood Pressure:
// Systolic: 130-139 mm Hg
// Diastolic: 85-89 mm Hg
//
// Grade 1 Hypertension (Mild):
// Systolic: 140-159 mm Hg
// Diastolic: 90-99 mm Hg
//
// Grade 2 Hypertension (Moderate):
// Systolic: 160-179 mm Hg
// Diastolic: 100-109 mm Hg
//
// Grade 3 Hypertension (Severe):
// Systolic: 180 mm Hg or higher
// Diastolic: 110 mm Hg or higher
//
// Isolated Systolic Hypertension:
// Systolic: 140 mm Hg or higher
// Diastolic: Less than 90 mm Hg
BloodPressureCategory? getBPCategoryByValues({
  required int systolic,
  required int diastolic,
}) {
  if (systolic < 90 || diastolic < 60) {
    return BloodPressureCategory.low;
  } else if (systolic < 120 && diastolic < 80) {
    return BloodPressureCategory.optimal;
  } else if ((systolic >= 120 && systolic <= 129) &&
      (diastolic >= 60 && diastolic <= 84)) {
    return BloodPressureCategory.normal;
  } else if ((systolic >= 130 && systolic <= 139) ||
      (diastolic >= 85 && diastolic <= 89)) {
    return BloodPressureCategory.highNormal;
  } else if (systolic >= 140 && diastolic < 90) {
    return BloodPressureCategory.isolatedSystolicHypertension;
  } else if ((systolic >= 140 && systolic <= 159) &&
      (diastolic >= 90 && diastolic <= 99)) {
    return BloodPressureCategory.grade1Hypertension;
  } else if ((systolic >= 160 && systolic <= 179) &&
      (diastolic >= 100 && diastolic <= 109)) {
    return BloodPressureCategory.grade2Hypertension;
  } else if (systolic >= 180 || diastolic >= 110) {
    return BloodPressureCategory.grade3Hypertension;
  }
  return null;
}
