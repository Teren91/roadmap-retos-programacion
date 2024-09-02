
/*
 * EJERCICIO:
 * Empleando tu lenguaje, explora la definición del tipo de dato
 * que sirva para definir enumeraciones (Enum).
 * Crea un Enum que represente los días de la semana del lunes
 * al domingo, en ese orden. Con ese enumerado, crea una operación
 * que muestre el nombre del día de la semana dependiendo del número entero
 * utilizado (del 1 al 7).
 *
 * DIFICULTAD EXTRA (opcional):
 * Crea un pequeño sistema de gestión del estado de pedidos.
 * Implementa una clase que defina un pedido con las siguientes características:
 * - El pedido tiene un identificador y un estado.
 * - El estado es un Enum con estos valores: PENDIENTE, ENVIADO, ENTREGADO y CANCELADO.
 * - Implementa las funciones que sirvan para modificar el estado:
 *   - Pedido enviado
 *   - Pedido cancelado
 *   - Pedido entregado
 *   (Establece una lógica, por ejemplo, no se puede entregar si no se ha enviado, etc...)
 * - Implementa una función para mostrar un texto descriptivo según el estado actual.
 * - Crea diferentes pedidos y muestra cómo se interactúa con ellos. 
 */


import 'dart:io';

enum days{
  MONDAY,
  TUESDAY,
  WEDNESDAY,
  THURSDAY,
  FRIDAY,
  SATURDAY,
  SUNDAY
}

enum DeliveryOrderState{
  PENDING,
  SENT,
  DELIVERED,
  CANCELLED
}

void main(){

  //Pedir el día de la semana por pantalla

  // int? day = int.tryParse(stdin.readLineSync()!); 

  // ShowDay(day);

  //Crea diferentes pedidos y muestra cómo se interactúa con ellos. 
  
  DeliveryOrder order1 = DeliveryOrder(1, DeliveryOrderState.PENDING);
  order1.send();
  order1.showState();

  order1.deliver();
  order1.showState();

  order1.cancel();
  order1.showState();
}

class DeliveryOrder{
  int id;
  DeliveryOrderState state;

  DeliveryOrder(this.id, this.state);

  String getState(){
    return state.name;
  }

  void showState(){
    print(getState());
  }

  void StateToSend(){
    state = DeliveryOrderState.SENT;
  }

  void StateToDeliver(){
    state = DeliveryOrderState.DELIVERED;
  }

  void StateToCancel(){
    state = DeliveryOrderState.CANCELLED;
  }


  void send(){
    if(getState() == "PENDING"){
      StateToSend();
    }
    else{
      print('The order is already sent');
    }
  }

  void deliver(){
    if(getState() == "SENT"){
      StateToDeliver();
    }
    else{
      print('The order is already delivered');
    }
    
  }
  
  void cancel(){
      if(getState() == "DELIVERED"){
        StateToCancel();
      }
      else{
        print('The order is already cancelled');
      }
  }


}

void ShowDay(int? day){
  
  switch(day){
    case 1:
      print('Monday');
      break;
    case 2:
      print('Tuesday');
      break;
    case 3:
      print('Wednesday');
      break;
    case 4:
      print('Thursday');
      break;
    case 5:
      print('Friday');
      break;
    case 6:
      print('Saturday');
      break;
    case 7:
      print('Sunday');
      break;
    default:
      print('Day not selected');
      break;
  }

}

