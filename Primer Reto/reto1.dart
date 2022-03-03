void main() {
 
  var ages = [33, 15, 27, 40, 22];
  ages.sort();
  print(''' La Edad menor es: ${ages.first}  \n La Edad Mayor es : ${ages.last}  \n El Promedio es : ${average(ages)}''');
}

num average(var arr){
  num temp = 0;
  arr.forEach((a) => temp += a);
  return temp/arr.length;
}