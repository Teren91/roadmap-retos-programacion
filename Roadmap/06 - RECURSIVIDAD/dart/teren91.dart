/*
 * EJERCICIO:
 * Entiende el concepto de recursividad creando una función recursiva que imprima
 * números del 100 al 0.
 *
 * DIFICULTAD EXTRA (opcional):
 * Utiliza el concepto de recursividad para:
 * - Calcular el factorial de un número concreto (la función recibe ese número).
 * - Calcular el valor de un elemento concreto (según su posición) en la 
 *   sucesión de Fibonacci (la función recibe la posición).
 */


void main()
{
  //Mostrar una lista de números del 100 al 0
  //printNumbers(100);

  //Calcular el factorial de un número
  //print(factorial(5));

  //Calcular el valor de un elemento en la sucesión de Fibonacci
  print(fibonacci(8));

}

void printNumbers(int n)
{
  if(n >= 0)
  {
    print(n);
    printNumbers(n - 1);
  }
}

int factorial (int n)
{
  if(n == 0)
  {
    return 1;
  }
  else
  {
    return n * factorial(n - 1);
  }
}

int fibonacci(int n)
{
  if(n == 0)
  {
    return 0;
  }
  else if(n == 1)
  {
    return 1;
  }
  else
  {
    return fibonacci(n - 1) + fibonacci(n - 2);
  }
}