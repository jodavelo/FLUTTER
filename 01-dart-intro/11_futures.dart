void main() {
  print('Begin');
  httpGet('http://localhost/apis').then((value){
    print( value );
  }).catchError((err){
    print('Error $err');
  });
  print('End up');
}

Future<String> httpGet(String url) {
  return Future.delayed( Duration(seconds: 1), (){
    throw 'Exception error';
    //return 'Http response'; 
  });
}