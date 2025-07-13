import 'dart:async';

void main() async {
  await streamWithAwaitFor();
  await streamWithListen();
}

// Task 6: Стрім з чисел (fromIterable)
Future<void> streamWithAwaitFor() async {
  print('Task 6: await for');
  
  Stream<int> numbers = Stream.fromIterable([1, 2, 3, 4, 5]);
  await for (int number in numbers) {
    print('Число: $number');
  }
}

Future<void> streamWithListen() async {
  print('Task 6: listen');
  
  Stream<int> numbers = Stream.fromIterable([1, 2, 3, 4, 5]);
  numbers.listen((number) {
    print('Число: $number');
  });
}

// Task 7: Зворотний відлік зі стріму (periodic)
// TODO: Реалізувати periodic stream

// Task 8: Робота з StreamController
// TODO: Реалізувати StreamController 