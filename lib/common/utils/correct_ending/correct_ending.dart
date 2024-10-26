abstract final class CorrectEnding {
  static String day(int numberOfDays) {
    if (numberOfDays % 10 == 1 && numberOfDays % 100 != 11) {
      return '$numberOfDays день';
    } else if (numberOfDays % 10 >= 2 &&
        numberOfDays % 10 <= 4 &&
        (numberOfDays % 100 < 12 || numberOfDays % 100 > 14)) {
      return '$numberOfDays дня';
    } else {
      return '$numberOfDays дней';
    }
  }

  static String week(int numberOfWeeks) {
    if (numberOfWeeks == 1) {
      return '$numberOfWeeks неделя';
    } else if (numberOfWeeks % 10 >= 2 &&
        numberOfWeeks % 10 <= 4 &&
        (numberOfWeeks % 100 < 12 || numberOfWeeks % 100 > 14)) {
      return '$numberOfWeeks недели';
    } else {
      return '$numberOfWeeks недель';
    }
  }

  static String month(int numberOfMonths) {
    if (numberOfMonths % 10 == 1 && numberOfMonths % 100 != 11) {
      return '$numberOfMonths месяц';
    } else if (numberOfMonths % 10 >= 2 &&
        numberOfMonths % 10 <= 4 &&
        (numberOfMonths % 100 < 12 || numberOfMonths % 100 > 14)) {
      return '$numberOfMonths месяца';
    } else {
      return '$numberOfMonths месяцев';
    }
  }

  static String year(int numberOfYears) {
    if (numberOfYears % 10 == 1 && numberOfYears != 11) {
      return '$numberOfYears год';
    } else if (numberOfYears % 10 >= 2 &&
        numberOfYears % 10 <= 4 &&
        (numberOfYears % 100 < 12 || numberOfYears % 100 > 14)) {
      return '$numberOfYears года';
    } else {
      return '$numberOfYears лет';
    }
  }

  static String yearGenitiveCase(int numberOfYears) {
    if (numberOfYears % 10 == 1) {
      return '$numberOfYears года';
    }
    return '$numberOfYears лет';
  }

  static String peopleGenitiveCase(int amountOfPeople) {
    if (amountOfPeople % 10 == 1 && amountOfPeople % 100 != 11) {
      return 'До $amountOfPeople человека';
    }
    return 'До $amountOfPeople человек';
  }

  static String? ageLimits(int? minAge, int? maxAge) {
    if (minAge == null && maxAge == null) return null;

    final minStr = minAge != null ? 'от ${yearGenitiveCase(minAge)}' : null;
    final maxStr = maxAge != null ? 'до ${yearGenitiveCase(maxAge)}' : null;

    if (minStr == null) return maxStr;
    if (maxStr == null) return minStr;
    return '$minStr $maxStr';
  }
}
