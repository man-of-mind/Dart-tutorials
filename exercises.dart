import 'dart:math' as math;
void main(){
    List names = ["pimeh", "osy", "oghosa", "bethel", "jeff"];
    for(var name in names){
      print(name);
    }
    String myName = "Abiodun Ganiyu";
    for (var i = 0; i < myName.length; i++){
      print(myName[i]);
    }

    List numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
    for (var numb in numbers){
      var answer = math.pow(numb, 2);
      print(answer);
    }

    int j = 0;
    while (j < myName.length) {
      print(myName[j]);
      j++;
    }
    String name = "141";
    print(check_if_palindrome(name));

    var me = new List();
    var you = new List();
    me = [3, 4, 6, 7, 9, 3, 3, 3, 3, 2];
    you = [1, 2, 3, 4, 5, 6, 7, 8];
    dynamic result = you.remove(9);
    print(compare_list(me, you));
    print(result);
    int num = 12;
    print(product(num));

    Cylinder cylin = new Cylinder(8, 15);
    var vol = cylin.calc_volume();
    var curved = cylin.calc_curved_surface_area();
    var total = cylin.calc_total_surface();
    print("volume is ${vol}, curved area is ${curved}, and total area is ${total}");
}

class Cylinder{
  var base_radius;
  var height;
  Cylinder(var rad, var hgt){
    this.base_radius = rad;
    this.height = hgt;
  }
  double calc_curved_surface_area(){
    double curved_area = 2 * math.pi * base_radius * height;
    return curved_area;
  }
  double calc_volume(){
    double volume = math.pi * math.pow(base_radius, 2) * height;
    return volume;
  }
  double calc_total_surface(){
    double total_surface_area = 2 * math.pi * base_radius * (base_radius + height);
    return total_surface_area;
  }
}

check_if_palindrome(String str){
  var str_list = new List();
  int len = str.length;
  int che = 1;
  for(int i = 0; i < len; i++){
    str_list.add(str.substring(i, che));
    che++;
  }
  var str_reversed = new List(len);
  int lenn = len - 1;
  for(int j = 0; j < len; j++){
    str_reversed[j] = str_list[lenn];
    lenn--;
  }
  bool ans = true;
  for(int m = 0; m < len; m++){
    var char = str_list[m];
    var char_copy = str_reversed[m];
    if (char == char_copy){
      ans = true;
    }
    else{
      ans = false;
      break;
    }
  }
  return ans;
}

compare_list(List first, List second){
  bool ans = false;
  int len = second.length;
  for(int j = 0; j < len; j++){
    var char;
    dynamic res = second.remove(first[j]);
    if (res == true){
      ans = true;
    }
    else{
      ans = false;
      break;
    }
  }
  return ans;
}

product(int number){
  //the product of all the prime factors of the number will still be the number, hence:
  return number;
}