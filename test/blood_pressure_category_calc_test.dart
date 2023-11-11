import 'package:flutter_test/flutter_test.dart';
import 'package:sys_dia_log/modules/measurement/models/blood_pressure_category.dart';
import 'package:sys_dia_log/modules/measurement/service/blood_pressure_category_calc.dart';

void main() {
  group("calculate bp tests", () {
    test('returns optimal category', () {
      expect(getBPCategoryByValues(systolic: 110, diastolic: 70),
          BloodPressureCategory.optimal);
    });

    test('returns normal category', () {
      expect(getBPCategoryByValues(systolic: 125, diastolic: 80),
          BloodPressureCategory.normal);
    });

    test('returns high normal category', () {
      expect(getBPCategoryByValues(systolic: 135, diastolic: 85),
          BloodPressureCategory.highNormal);
    });

    test('returns grade 1 hypertension category', () {
      expect(getBPCategoryByValues(systolic: 145, diastolic: 95),
          BloodPressureCategory.grade1Hypertension);
    });

    test('returns grade 2 hypertension category', () {
      expect(getBPCategoryByValues(systolic: 165, diastolic: 105),
          BloodPressureCategory.grade2Hypertension);
    });

    test('returns grade 3 hypertension category', () {
      expect(getBPCategoryByValues(systolic: 190, diastolic: 115),
          BloodPressureCategory.grade3Hypertension);
    });

    test('returns isolated systolic hypertension category', () {
      expect(getBPCategoryByValues(systolic: 150, diastolic: 80),
          BloodPressureCategory.isolatedSystolicHypertension);
    });
  });
}
