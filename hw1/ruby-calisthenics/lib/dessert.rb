class Dessert
  attr_accessor :name, :calories
  def initialize(name, calories)
    @name, @calories = name, calories;
  end
  
  def healthy?
    calories < 200 ? true : false
  end

  def delicious?
    true
  end
end

class JellyBean < Dessert
  attr_accessor :flavor
  def initialize(flavor)
    @flavor = flavor 
    @name, @calories = "#{@flavor} jelly bean", 5
  end

  def delicious?
    return false if flavor == "licorice"
    super
  end
end
