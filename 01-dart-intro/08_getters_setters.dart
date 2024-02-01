void main(){
  
  final square = Square(side: 10);
  square.side = 90;
  print( square.area );
}

class Square {
  double _side;
  
  Square({ required double side })
    : assert( side >= 0, 'Value must be positive numbers only' ),
      _side = side;
  
  double get area {
    return _side * _side;
  }
  
  set side(double value){
    if(value < 0) throw 'The value passed as parameter must be greather than 0';
    _side = value;
  }
  
  double calculateArea(){
    return _side *_side;
  }
}