# LeetCode #387: First Unique Character in a String (Ruby)

def first_uniq_char(s)
  count = s.chars.tally
  
  s.chars.each_with_index do |char, idx|
    return idx if count[char] == 1
  end
  
  -1
end