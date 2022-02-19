# frozen_string_literal: true

def open_file(name)
  File.open(name)&.read&.split(' ')
rescue StandardError
  nil
end

def max_word(data)
  return if data.nil?

  data.sort_by{|word| word.length}.reverse[0]
end
