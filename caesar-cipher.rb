def caesar_cipher(str, shift)
  split = str.split("")
  numbered = split.map {|letter| letter.ord}
  shifted = numbered.map {|num| shift(num, shift)}
  cipher = shifted.map {|num| num.chr}
  return cipher.join
end

def shift(num, shift)
  if num+shift > 122
    return num+shift-122+96
  elsif ((65..90).include?(num)) && (num+shift > 90)
    return num+shift-90+64
  end
  if (97..122).include?(num) || (65..90).include?(num)
    return num+shift
  end
  return num
end