dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

def substring (phrase, dict)
  count = Hash.new(0)
  dict.each do |dict_word|
    num =  phrase.downcase.scan(dict_word).length
    if num > 0 then
      count[dict_word] = num
    end
  end
  count
end

puts substring("Howdy partner, sit down! How's it going?", dictionary)