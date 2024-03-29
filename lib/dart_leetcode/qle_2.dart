class Solution {
  int findGCD(List<int> nums) {
  int minNum = nums[0];
  int maxNum = nums[0];
  
  for (int num in nums) {
    minNum = num < minNum ? num : minNum;
    maxNum = num > maxNum ? num : maxNum;
  }
  
  
  while (minNum != 0) {
    int remainder = maxNum % minNum;
    maxNum = minNum;
    minNum = remainder;
  }
  
  return maxNum;
}

void main() {
  print(findGCD([2, 5, 6, 9, 10])); 
  print(findGCD([7, 5, 6, 8, 3]));   
  print(findGCD([3, 3]));          
}

}