void main() async {
  String userName = await fetchName();

  print('Мене звати $userName');
}

// Task 1: Асинхронне отримання імені
Future<String> fetchName() async {
  await Future.delayed(Duration(seconds: 1));
  print('Завантажую...');
  await Future.delayed(Duration(seconds: 1));
  return 'Andrii';
}

// Task 2: Асинхронне отримання віку  
// TODO: Реалізувати fetchAge()

// Task 3: Послідовне виконання Future
// TODO: Реалізувати sequential execution

// Task 4: Паралельне виконання Future
// TODO: Реалізувати parallel execution

// Task 5: Зворотний відлік з затримкою
// TODO: Реалізувати delayedCountdown() 