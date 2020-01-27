public void setup()
{
  String lines[] = loadStrings("palindromes.txt");
  println("there are " + lines.length + " lines");
  for (int i=0; i < lines.length; i++) 
  {
    if(palindrome(lines[i])==true)
    {
      println(lines[i] + " IS a palindrome.");
    }
    else
    {
      println(lines[i] + " is NOT a palindrome.");
    }
  }
}
public boolean palindrome(String word)
{
  //your code here
  word = word.toLowerCase();
  word = noSpaces(word);
  word = onlyLetters(word);
  if(reverse(word).equals(word))
    return true;
  return false;
}
public String reverse(String str)
{
    String sNew = new String();
    //your code here
 
  for(int i = str.length()-1; i>=0; i--)
  {
     sNew = sNew + str.substring(i,i+1);
  }
  return sNew;
}
public String noSpaces(String str){
  String sum = "";
  for(int i=0; i<str.length(); i++) 
  {
    if(Character.isLetter(str.charAt(i)))
    {
      sum = sum + str.substring(i, i+1);
    }
  }
  return sum;
}
public String onlyLetters(String str){
  String sum = "";
  for(int i=0; i<str.length(); i++)
  {
    if(Character.isLetter(str.charAt(i))){
      sum = sum + str.substring(i, i+1);
    }
  }
  return sum;
}
