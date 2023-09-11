void printDuplicateElements(List<int>arr){
  Set<int>uniqueElements=Set<int>();
  Set<int>duplicateElements=Set<int>();

  for(int num in arr){
    if(!uniqueElements.add(num)){
      //if the element is already in the set ,it's a duplicate
      duplicateElements.add(num);
    }
  }
  if(duplicateElements.isEmpty){
    print("No Duplicate elements found.");
  }else{
    print("Duplicate elements in the array:$duplicateElements");
  }
}
void main(){
  List<int>numbers=[1,2,3,2,4,5,3,6];

  printDuplicateElements(numbers);
}