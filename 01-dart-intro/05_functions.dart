void main() {
  
  print( greetEveryone() );
  print('Add: ${ addTwoNumbersOptional(50) }');
  print( greetPerson( name: 'Daniel', message: 'Hi!' ) );
}

String greetEveryone() => 'Hello everyone!';

int addTwoNumbers(int a, int b) => a + b;

int addTwoNumbersOptional(int a, [int b = 0]){
  // b ??= 0; // This check if b variable contain any value
  return a + b;
}

String greetPerson({ required String name, String message = 'Hello,' }){
  return '$message $name';
}