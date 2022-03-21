import 'dart:io';

var cont = 0;
void hanoi(int ntopo, String torreA,
   String torreB, String torreC) {
      if (ntopo == 1){
         print('Disk 1 da $torreA Para $torreC');
      
      }else {
         hanoi(ntopo - 1, torreA, torreC, torreB);
         print('Disk $ntopo da $torreA Para $torreC');
         hanoi(ntopo - 1, torreB, torreA, torreC);
      }
  cont+=1;
   }

void main() {
  print('Insira o numero de discos: ');
  String? input = stdin.readLineSync();
  var ndiscos = int.parse(input!);
  hanoi(ndiscos, 'A', 'B', 'C');
  print('O numero de jogadas foi: $cont');
}