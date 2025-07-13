void main() async {
  String userName = await fetchName();
  print('Мене звати $userName');

  String userAge = await fetchAge();
  print('Мені $userAge');

  print('\n Task 3: sequential execution');
  await sequential();

  print('\n Task 4: parallel execution');
  await parallel();
}

// Task 1: Асинхронне отримання імені
Future<String> fetchName() async {
  await Future.delayed(Duration(seconds: 2));
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
Future<void> sequential() async {
  Stopwatch stopwatch = Stopwatch();
  stopwatch.start();
  await fetchName();
  await fetchAge();
  stopwatch.stop();
  
  print('Час виконання: ${stopwatch.elapsedMilliseconds} мс');
}

// Task 4: Паралельне виконання Future
Future<void> parallel() async {
  Stopwatch stopwatch = Stopwatch();
  stopwatch.start();
  await Future.wait([
    fetchName(),
    fetchAge()
  ]);
  stopwatch.stop();
  
  print('Час виконання: ${stopwatch.elapsedMilliseconds} мс');
}

// Task 5: Зворотний відлік з затримкою
// TODO: Реалізувати delayedCountdown()
