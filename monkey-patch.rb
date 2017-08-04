class String
   def pig
    arr = self.downcase.split('')
    first_letter = arr.shift
    arr << first_letter << 'a' << 'y'
    arr.join.capitalize
  end  

  def isPalindrome?
    string2 = self.downcase.gsub(/\W+/,'')
    return true if string2.length <= 1
    if string2[0] == string2[-1]
      string2[1..-2].isPalindrome?
    else
     false
    end
  end

  def techify
    self.gsub(/er/, 'r')
  end
end
