import 'package:gym_application/common/utils/correct_ending/correct_ending.dart';

abstract final class DateFormattors {
  static String formattedDateComment(DateTime dateTime) {
    final Duration difference = DateTime.now().difference(dateTime);
    int amountOfDays = difference.inDays;
    if (amountOfDays == 0) {
      return 'Сегодня';
    }
    if (amountOfDays <= 7) {
      return '${CorrectEnding.day(amountOfDays)} назад';
    }
    int amountOfWeeks = amountOfDays ~/ 7;
    if (amountOfDays <= 28) {
      return '${CorrectEnding.week(amountOfWeeks)} назад';
    }
    int amountOfMonths = amountOfDays ~/ 30;
    if (amountOfDays < 365) {
      return '${CorrectEnding.month(amountOfMonths)} назад';
    }
    int amountOfYears = amountOfDays ~/ 365;

    return '${CorrectEnding.year(amountOfYears)} назад';
  }

  static String getWeekday(int weekday) {
    switch (weekday) {
      case 1:
        return 'Понедельник';
      case 2:
        return 'Вторник';
      case 3:
        return 'Среда';
      case 4:
        return 'Четверг';
      case 5:
        return 'Пятница';
      case 6:
        return 'Суббота';
      case 7:
        return 'Воскресенье';
    }
    return '';
  }

  static String getShortWeekday(int weekday) {
    switch (weekday) {
      case 1:
        return 'Пн';
      case 2:
        return 'Вт';
      case 3:
        return 'Ср';
      case 4:
        return 'Чт';
      case 5:
        return 'Пт';
      case 6:
        return 'Сб';
      case 7:
        return 'Вс';
    }
    return '';
  }

  static String getMonthGenetive(int month) {
    switch (month) {
      case 1:
        return 'января';
      case 2:
        return 'февраля';
      case 3:
        return 'марта';
      case 4:
        return 'апреля';
      case 5:
        return 'мая';
      case 6:
        return 'июня';
      case 7:
        return 'июля';
      case 8:
        return 'августа';
      case 9:
        return 'сентября';
      case 10:
        return 'октября';
      case 11:
        return 'ноября';
      case 12:
        return 'декабря';
    }
    return '';
  }

  static String getMonth(int month) {
    switch (month) {
      case 1:
        return 'Январь';
      case 2:
        return 'Февраль';
      case 3:
        return 'Март';
      case 4:
        return 'Апрель';
      case 5:
        return 'Май';
      case 6:
        return 'Июнь';
      case 7:
        return 'Июль';
      case 8:
        return 'Август';
      case 9:
        return 'Сентябрь';
      case 10:
        return 'Октябрь';
      case 11:
        return 'Ноябрь';
      case 12:
        return 'Декабрь';
    }
    return '';
  }

  static String getDateWithTime(DateTime dateTime, [bool inTime = false]) {
    final day = dateTime.day;
    final month = getMonthGenetive(dateTime.month);
    final hour = dateTime.hour;
    final minute = dateTime.minute;

    final dateWithTime = '$day $month,${inTime ? 'в' : ''} $hour:${minute < 10 ? '0$minute' : minute}';

    return dateTime.year == DateTime.now().year ? dateWithTime : '$dateWithTime\n${dateTime.year} г.';
  }

  static String getDate(DateTime dateTime, [bool inTime = false]) {
    final day = dateTime.day;
    final month = getMonthGenetive(dateTime.month);

    final date = '$day $month, ${dateTime.year}';

    return date;
  }

  static String getTime(DateTime dateTime) {
    final hour = dateTime.hour;
    final minute = dateTime.minute;

    return '$hour:${minute < 10 ? '0$minute' : minute}';
  }
}
