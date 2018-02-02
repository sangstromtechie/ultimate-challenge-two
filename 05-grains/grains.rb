class Grains
  def self.square(num)
    2**(num-1)
  end
  def self.total
    count = 1
    total_grains = 0
    64.times do
      total_grains += Grains.square(count)
      count += 1
    end
    total_grains
  end
end