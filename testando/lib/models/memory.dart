import 'package:intl/intl.dart';

class Memory {
  static const operations = const ['%', '/', 'X', '-', '+', '='];

  final _buffer = [0.0, 0.0];
  int _bufferIndex = 0;
  String operation;
  String _value = '0';
  bool _wipeValue = false;
  

  void applyCommand(String command){
    if(command == 'AC'){
      _allClear();
    }else if(operations.contains(command)){
      _setOperation(command);
    }else{
      _addDigit(command);
    }
  }

  _setOperation(String newOperation){
      _wipeValue = true;
  }

  _addDigit(String digit){
    final isDot = digit == ',';
    final wipeValue = (_value == '0' && !isDot) || _wipeValue;

    if(isDot && _value.contains(',') && !wipeValue){
      return;
    }

    final emptyValue = isDot ? '0' : '';
    final currentValue = wipeValue ? emptyValue : _value;
    _value = currentValue + digit;
    _wipeValue = false;

    _buffer[_bufferIndex] =  double.parse(_value) ?? 0;
    print(NumberFormat.currency(locale: 'pt-BR').format(_buffer[_bufferIndex]));
  }

  _allClear(){
    _value = '0';
  }

  String get value{
    return _value;
  }
}