void main() {
  final Hero wolverine = Hero(name: 'Logan');
  print( wolverine );
  print( wolverine.name );
}


class Hero{
  
  String name;
  String power;
  
  Hero({
    required this.name,
    this.power = 'No power'
  });
  
  //Hero( String pName, String pPower )
  //  : this.name = pName, this.power = pPower;

  @override
  String toString(){
    return '$name - $power';
  }
}