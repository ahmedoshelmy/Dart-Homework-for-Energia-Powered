import 'dart:io';
import 'dart:math';

main(){

 while(true){
    int n=Random().nextInt(3);

 String user = stdin.readLineSync()!;
List <String > list =["s","r","p"];
String r=list[n];
print('I chose $r');
if((user=="r"&&r=="s")||(user=="s"&&r=="p")||(user=="p"&&r=="r")){
  print("Lucky! You won");
}else if(user==r){
  print("Draw");
}else{
  print("Oops You lot hard luck");
}
}
}
