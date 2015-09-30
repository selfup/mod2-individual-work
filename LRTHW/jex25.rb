module Ex25

  # This function will break up words for us.
  def Ex25.break(stuff)
    words = stuff.split(' ')
    return words
  end

  # Sorts the words.
  def Ex25.sort(words)
    return words.sort
  end

  # Prints the first word after shifting it off.
  def Ex25.first(words)
    word = words.shift
    puts word
  end

  # Prints the last word after popping it off.
  def Ex25.last(words)
    word = words.pop
    puts word
  end

  # Takes in a full sentence and returns the sorted worsd.
  def Ex25.sort(a)
    words = Ex25.sort(a)
    return Ex25.sort(words)
  end

  # Prints the first and last words of the sentence.
  def Ex25.firstLast(a)
    words = Ex25.break(a)
    Ex25.first
    Ex25.last
  end

  # Sorts the words then prints the first and last one.
  def Ex25.firstLast(a)
    words = Ex25.sort(a)
    Ex25.first(words)
    Ex25.last(words)
  end

end
