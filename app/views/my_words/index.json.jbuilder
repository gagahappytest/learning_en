json.array!(@my_words) do |my_word|
  json.extract! my_word, :id, :word, :soundmark, :explain, :add_time, :search_times
  json.url my_word_url(my_word, format: :json)
end
