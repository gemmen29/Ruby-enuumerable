require_relative 'my_enumerable'

class MyList
  include MyEnumerable

  def initialize (*list)
    @list = list
  end

  def each
    @list.each do |num| 
      yield num
    end
  end
end

list = MyList.new(2, 3, 4, 5)
p list.all? {|e| e <= 5}
