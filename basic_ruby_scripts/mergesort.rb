values = (1..1000).to_a.sample(100)

sorted = []
@sorted = sorted

def mid_point(a)
  a.size / 2
end

def is_it_empty(i)
  i.empty?
end

def until_empty(l , r)
  until is_it_empty(l) or is_it_empty(r)
    if l.first <= r.first
      @sorted << l.shift
    else
      @sorted << r.shift
    end
  end
end

def add_in_order(l, r)
  @sorted = []
  until_empty(l, r)
  @sorted.concat(l).concat(r)
end

def merge_and_sort_and_merge(a)
  ar = a.size
  l = a[0, mid_point(a)]
  r = a[mid_point(a), ar - mid_point(a)]
  if ar <= 1
    return a
  end
  add_in_order(merge_and_sort_and_merge(l), merge_and_sort_and_merge(r))
end

print "#{merge_and_sort_and_merge(values)} \n"
