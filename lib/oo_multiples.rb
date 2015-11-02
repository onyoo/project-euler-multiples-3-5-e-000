# Enter your object-oriented solution here!
#If we list all the natural numbers below 10 that are multiples of 3 or 5, 
#we get 3, 5, 6 and 9. The sum of these multiples is 23.

#Find the sum of all the multiples of 3 or 5 below 1000.

class Multiples
  def initialize(limit)
    @limit = limit - 1
  end

#creates array << multiplese of 3&5
  def collect_multiples
    (1..@limit).select{|num| num%3 == 0 || num%5 == 0}
  end

  #finds numbers divisable by 3&5 > array
  def sum_multiples
    @sum35 = (1..@limit).select{|num| num%3 == 0 || num%5 == 0}
    @sum35 = @sum35.reduce(:+)
    @sum35
  end
end
