public void setup()
{
  String lines[] = loadStrings("palindromes.txt");
  println("there are " + lines.length + " lines");
  for (int i=0; i < lines.length; i++) 
  {
    if(palindrome(lines[i])==true)
    {
      println(lines[i] + " IS a palidrome.");
    }
    else
    {
      println(lines[i] + " is NOT a palidrome.");
    }
  }
}
public boolean palindrome(String word)
{
  if (word.equals(reverse(word)) || word.equals(noSpaces(word)) || word.equals(noCapitals(word)) || (numLetters(word) > 0))
    return true;
  return false;
}
public String reverse(String str)
{
    String sNew = new String();
    int nLast = str.length()-1;
    for (int nI = nLast; nI >= 0; nI--)
      sNew = sNew + str.substring(nI, nI + 1);
    return sNew;
}
public String noSpaces(String sWord)
{
  String result = new String();
  for(int i = 0; i < sWord.length(); i++)
     if(!sWord.substring(i,i+1).equals(" "))
       result = result + sWord.substring(i,i+1);
  return result;
}
public String noCapitals(String sWord)
{
  return sWord.toLowerCase();
}
public int numLetters(String sString)
{
  int count = 0;
  for(int i = 0; i < sString.length(); i++)
    if (Character.isLetter(sString.charAt(i)) == true)
      count++;
  return count;
}