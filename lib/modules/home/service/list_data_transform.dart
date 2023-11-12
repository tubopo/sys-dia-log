import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:sys_dia_log/modules/home/model/list_data.dart';
import 'package:sys_dia_log/modules/home/model/list_item.dart';
import 'package:sys_dia_log/modules/measurement/models/blood_pressure_category.dart';
import 'package:sys_dia_log/modules/measurement/models/measurement.dart';
import 'package:sys_dia_log/modules/measurement/service/blood_pressure_category_calc.dart';

List<ListItem> transformListData(List<Measurement> data) {
  //sort data by created date
  data.sort((b, a) => a.createdAt.compareTo(b.createdAt));

  return data
      .map((Measurement m) => _mapToListData(m))
      .map((ListData d) => ListItem(d))
      .toList();
}

ListData _mapToListData(Measurement data) {
  int sys = data.bloodPressure.systolic;
  int dia = data.bloodPressure.diastolic;

  BloodPressureCategory? category =
      getBPCategoryByValues(systolic: sys, diastolic: dia);

// unknown category displayed as '-'
  String categoryName =
      category?.jsonValue == null ? "-" : "category.${category?.jsonValue}";

  return ListData(
    sys,
    dia,
    categoryName,
    Color(category?.hexColor ?? 0xFF424242), //unknown category color as grey
    data.pulse.bpm,
    data.createdAt,
  );
}
