def isPalindrome?(string)
  string2 = string.downcase.gsub(/\W+/,'')
  return true if string2.length <= 1
  if string2[0] == string2[-1]
    isPalindrome?(string2[1..-2])
  else
    false
  end
end
