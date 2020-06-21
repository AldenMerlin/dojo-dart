class MotorV10 extends Motor {
  @override
  void acelerar () {
    print("Olá Rubinho Barrichello!");
    super.acelerar();
  }
  
  void desacelerar () {
    print("Não está no contrato.");
  }
}

class MotorV8 extends Motor {
    @override
    void acelerar(){
      print("acelerando com V8: ${super.potencia + 50}");
    }
}

class MotorV6 implements Motor {
  @override
  int potencia = 0;
  
  @override
  void acelerar() {
    print("acelerando com V6: ${potencia + 50}");
  }
}

class FreioComum implements Freio {
  @override
  void frear() {
    print("freando com freio comum...");
  }
}

class FreioABS implements Freio {
  @override
  void frear(){
    print("freando com freio com ABS...");
  }
}

class Carro {
  final Motor motor;
  final Freio freio;
  
 Carro(this.motor, this.freio);
}

abstract class Motor {
  int potencia = 100;
  void acelerar(){
    print("Acelerando!");
  }
}

abstract class Freio {
   void frear();
}

void main() {
  MotorV10 motorv10 = MotorV10();
  Motor motorv8 = MotorV8();
  Motor motorv6 = MotorV6();
  Freio freioComum = FreioComum();
  Freio freioABS = FreioABS();
  
  motorv10.desacelerar();
    
  Carro carro = Carro(motorv10, freioABS);
  carro.motor.acelerar();
  carro.freio.frear();
}



