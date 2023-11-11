/// The World Health Organization (WHO) and the International Society of Hypertension (ISH) categorizations
enum BloodPressureCategory {
  low(
    "LOW",
    0xFF42A5F5, //light blue
  ),
  optimal(
    "OPTIMAL",
    0xFFC8E6C9, //light green
  ),
  normal(
    "NORMAL",
    0xFFA5D6A7, //green
  ),
  highNormal(
    "HIGH_NORMAL",
    0xFFFFFF00, //yellow
  ),
  grade1Hypertension(
    "GRADE_1_HYPERTENSION",
    0xFFFF5722, //dark orange
  ),
  grade2Hypertension(
    "GRADE_2_HYPERTENSION",
    0xFFE91E63, //pink
  ),
  grade3Hypertension(
    "GRADE_3_HYPERTENSION",
    0xFFD32F2F, // dark red
  ),
  isolatedSystolicHypertension(
    "ISOLATED_SYSTOLIC_HYPERTENSION",
    0xFF9C27B0, //purple
  );

  final String jsonValue;
  final int hexColor;

  const BloodPressureCategory(this.jsonValue, this.hexColor);
}
