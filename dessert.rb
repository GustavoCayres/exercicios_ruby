=begin
Gustavo Rodrigues Cayres Silva, nº 8584323
Pedro Marcondes, nº 8941168
=end

class Dessert
  def initialize(name, calories)
    @name = name
    @calories = calories
  end
  attr_accessor :name, :calories
  def healthy?
    if @calories < 200
    	return true
    else
    	return false
    end
  end
  def delicious?
    true
  end
end

class JellyBean < Dessert
  def initialize(flavor)
    @flavor = flavor
    @name = flavor + " jelly bean"
    @calories = 5
  end
  attr_accessor :flavor
  def delicious?
    if flavor == 'licorice'
    	return false
    else
    	return true
    end
  end
end
