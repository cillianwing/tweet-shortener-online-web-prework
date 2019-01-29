# Write your code here.
def dictionary
  {"hello" => "hi",
  "to" => "2",
  "two" => "2",
  "too" => "2",
  "for" => "4",
  "four" => "4",
  "be" => "b",
  "you" => "u",
  "at" => "@",
  "and" => "&"
  }
end

def word_substituter(string)
  string_array = string.split
  replace_words = dictionary
  new_string = []
  string_array.each do |word|
    if replace_words.key?(word.downcase)
      new_string << replace_words.values_at(word.downcase) 
    else 
      new_string << word
    end
  end
  new_string.join(" ")
end

def bulk_tweet_shortener(tweet_array)
  tweet_array.each do |string|
    puts word_substituter(string)
  end
end

def selective_tweet_shortener(tweet)
  if tweet.size > 140
    word_substituter(tweet)
  else 
    tweet 
  end
end

def shortened_tweet_truncator(tweet)
  short_tweet = word_substituter(tweet)
  if short_tweet.size > 140
    return "#{short_tweet[0..136]}..."
  else
    return short_tweet
  end
end