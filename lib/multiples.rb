# Enter your procedural solution here!


def collect_multiples(e)
  set = (1..e-1).select{|num| num%3 == 0 || num%5 == 0}
  set
end

def sum_multiples(limit)
  set = collect_multiples(limit).select{|num| num%3 == 0 || num%5 == 0}
  set.reduce(:+)
end
