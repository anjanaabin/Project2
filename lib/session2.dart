String
reversStringWithoutSpecialChars(String input){
  List<String>charList=input.split('');
  int start =0;
  int end =charList.length-1;

  while(start<end){
    if(!isSpecialChar(charList[start])){
      if(!isSpecialChar(charList[end])){
        //Swap characters
        String temp=charList[start];
        charList[start]=charList[end];
        charList[end]=temp;
        start++;
        end--;
      }else{
        end--;
      }
    }else{
      start++;
    }
  }
  return charList.join('');

}
bool isSpecialChar(String char){
  //Define your special characters or use a regular expression as needed
  String specialChar=r'[!@#\$%^&*()_+{}\[\]:;<>,.?~]';
  return
      RegExp(specialChar).hasMatch(char);
}
void main(){
  String input='Hello,world!';
  String reversed=
      reversStringWithoutSpecialChars(input);
  print(reversed);//Output:
  "dellorW,olleH!";
}