enum TrainingLevelEnum {
  beginner,
  intermediate,
  advanced;

  static String getNameFromValue(String value) {
    switch (value) {
      case 'Beginner':
        return 'Начинающий';
      case 'Intermediate':
        return 'Опытный';
      case 'Advanced':
        return 'Профессионал';
    }

    return '';
  }

  static int getScoreValue(String value) {
    switch (value) {
      case 'Beginner':
        return 1;
      case 'Intermediate':
        return 2;
      case 'Advanced':
        return 3;
    }

    return 0;
  }
}
