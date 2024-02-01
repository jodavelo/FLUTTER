void main() async {
  print('Begin');
  try {
    final value = await httpGet('https://webserver.com/apis');
    print(value);
  } on Exception catch(err) {
    print('We have a error $err');
  } catch ( err ) {
    print( err );
  } finally {
    print('End try catch');
  }
  print('End up');
}

Future<String> httpGet(String url) async {
  await Future.delayed( Duration(seconds: 1));
  throw Exception('Errrror');
  throw 'Http error from backend';
  return 'Http response 200';
}