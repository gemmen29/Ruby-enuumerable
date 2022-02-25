Module MyEnumerable
  def all? (&block)
    res = true;
    each do |value|
      res = false unless block.call(value)      
    end
    res
  end
end
