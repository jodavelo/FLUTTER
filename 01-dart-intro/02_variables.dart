void main(){
  final String pokemon = "Ditto";
  final int hp = 100;
  final bool isAlive = true;
  final List<String> abilities = ['impostor'];
  final List<String> sprites = ['/dev/image1.png', '/dev/image2.png'];
  
  // dynamic is null by default || == null
  dynamic errorMessage = "Error";
  errorMessage = true;
  print("""
  ${ pokemon }
  ${ hp }
  ${ isAlive }
  ${ abilities }
  ${ sprites }
  ${ errorMessage }
  """);
}