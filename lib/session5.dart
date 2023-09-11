void main(){
  List<int>sourceArray=[1,2,3,4,5];
  List<int>destinationArray=[];

  //opy elements from the sourceArray to the destinationArray
  for (int i=0;i<sourceArray.length;i++){
    destinationArray.add(sourceArray[i]);
  }
  //print the destinationArray to verify the copy
  print("Sourcearray.$sourceArray");
  print('DstinationArray:$destinationArray');
}