void main(){

  final rawJson = {
    'name': 'Spiderman',
    'isAlive': true,
    'power': 'Trepar'
  };
  
  final spiderman = Hero.fromJson( rawJson );
  print( spiderman );
  
  //final ironman = Hero(
  //  name: 'Tony stark',
  //  power: 'Money',
  //  isAlive: false
  //);
  
  //print( ironman );
}

class Hero{
  String name;
  String power;
  bool isAlive;
  
  Hero({
    required this.name, 
    required this.power, 
    required this.isAlive
  });
  
  Hero.fromJson( Map<String, dynamic> json )
    : this.name = json['name'] ?? 'No name property was found',
      this.power = json['power'] ?? 'No power property was found',
      this.isAlive = json['isAlive'] ?? 'No isAlive property was found';
  
  @override
  String toString(){
    return 'Name: $name, power: $power, isAlive: ${ isAlive ? 'YES' : 'NO' }';
  }
}