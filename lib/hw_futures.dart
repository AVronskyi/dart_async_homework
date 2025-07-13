void main() async {
  String userName = await fetchName();
  print('Мене звати $userName');

  String userAge = await fetchAge();
  print('Мені $userAge');
}

// Task 1: Асинхронне отримання імені
Future<String> fetchName() async {
  await Future.delayed(Duration(seconds: 1));
  print('Завантажую...');
  await Future.delayed(Duration(seconds: 1));
  return 'Andrii';
}

// Task 2: Асинхронне отримання віку  
Future<String> fetchAge() async {
  await Future.delayed(Duration(milliseconds: 1500));
  int age = 25;
  String word = getAgeWord(age);
  return '$age $word';
}

String getAgeWord(int age) {
  if (age % 10 == 1 && age % 100 != 11) {
    return 'рік';
  } else if ((age % 10 == 2 || age % 10 == 3 || age % 10 == 4) && 
             (age % 100 != 12 && age % 100 != 13 && age % 100 != 14)) {
    return 'роки';
  } else {
    return 'років';
  }
}

// Task 3: Послідовне виконання Future
// TODO: Реалізувати sequential execution

// Task 4: Паралельне виконання Future
// TODO: Реалізувати parallel execution

// Task 5: Зворотний відлік з затримкою
// TODO: Реалізувати delayedCountdown()
