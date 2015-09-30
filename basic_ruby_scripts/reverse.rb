def reverse_one(str)
  reversed_string = ""
  i = 0
  while i < str.length
    reversed_string = str[i] + reversed_string
    i += 1
  end
  str = reversed_string
end

def reverse_two(str)
  rev_str = []
  str = str.chars.reverse_each.map do |character|
    rev_str << character
  end
  str = str[0].join
end

def reverse_three(str)
  str = str.chars.reverse_each.map do |character|
    rev_str = []
    rev_str << character
  end
  str = str.join
end

def reverse_four(str)
  str = str.chars.reverse_each.map do |character|
    character
  end
  str.join
end

def reverse_five(str)
  rev_str = []
    i = str.length
    while i >= 0
      rev_str << str[i]
      i -= 1
    end
  rev_str.join
end

def reverse_six(str)
  rev_str = []
  str = str.chars
  str = str.length.times do |char|
    rev_str << str.pop
  end
  rev_str.join
end

reverse_one("hello")
reverse_two("hello")
reverse_three("hello")
reverse_four("hello")
reverse_five("hello")
reverse_six("hello")
