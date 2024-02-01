void main() async {
  print('Begin');
  try {
    final value = await httpGet('https://webserver.com/apis');
    print(value);
  } catch ( err ) {
    print( err );
  }
  print('End up');
}

Future<String> httpGet(String url) async {
  await Future.delayed( Duration(seconds: 1));
  throw 'Http error from backend';
  return 'Http response 200';
}