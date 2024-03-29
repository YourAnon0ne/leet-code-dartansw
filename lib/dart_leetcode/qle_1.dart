class Solution {
  String gcdOfStrings(String str1, String str2) {
  if (str1.length < str2.length) {
    var temp = str1;
    str1 = str2;
    str2 = temp;
  }

    for (var i = str1.length; i > 0; i--) {
    var substring = str1.substring(0, i);

    
    if (_isDivisor(str1, substring) && _isDivisor(str2, substring)) {
      return substring;
    }
  }

  return '';
}

bool _isDivisor(String string, String substring) {
 
  return string == substring * (string.length ~/ substring.length);
}

void main() {
  print(gcdOfStrings("ABCABC", "ABC"));  
  print(gcdOfStrings("ABABAB", "ABAB"));  
  print(gcdOfStrings("LEET", "CODE"));    
}}