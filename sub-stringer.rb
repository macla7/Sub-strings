dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
string="Howdy partner, sit down! How's it going?"
arr = []
counte = []

def substrings string, dictionary
    string = string.downcase
    tally(string, dictionary)
end

#problem is it's not discriminating based on number of times found.
def tally string, dictionary
    newArr=[]
    arr = dictionary.each do |word|
         times = count_em(string,word)
         i = 0
         while i < times do
            newArr.push(word)
            i +=1
         end
    end
    p arr
    counte = newArr.reduce(Hash.new(0)) do |result, word|
        result[word] += 1
        result
    end
    p counte
end

def count_em(string, substring)
    string.scan(/(?=#{substring})/).count
end

substrings(string,dictionary)
  