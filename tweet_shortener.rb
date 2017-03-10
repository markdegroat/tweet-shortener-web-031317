# Write your code here.
def dictionary
  {
    "hello" => "hi",
    "to" => "2",
    "too" => "2",
    "two" => "2",
    "for" => "4",
    "For" => "4",
    "four" => "4",
    "be" => "b",
    "you" => "u",
    "at" => "@",
    "and" => "&"
  }
end

def word_substituter(tweet)
  array_of_words = tweet.split(" ")
  array_of_words = (
  array_of_words.collect do |word|
    if dictionary.has_key?(word)
      dictionary[word]
    else
      word
    end
  end
  )
  array_of_words.join(" ")

end

def bulk_tweet_shortener(array_of_tweets)
  array_of_tweets.each do |tweet|
    puts word_substituter(tweet)
  end
end

def selective_tweet_shortener(tweet)
  if tweet.length  >= 140
    array_of_words = tweet.split(" ")
    array_of_words = (
    array_of_words.collect do |word|
      if dictionary.has_key?(word)
        dictionary[word]
      else
        word
      end
    end
    )
    array_of_words.join(" ")
  else
    tweet
  end
end

def shortened_tweet_truncator(tweet)
  if tweet.length > 140
    for val in (137..139)
      tweet[val] = "."
    end
  end
  tweet[0..139]
end
