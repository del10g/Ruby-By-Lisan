class Chef
  def make_pasta
    puts "The Chef making Pasta"
  end
end

class ItalianChef < Chef
  def make_special_dish
    puts "Italian Chef make Italian Dish"
  end
end

chef = Chef.new
chef.make_pasta
ichef = ItalianChef.new
ichef.make_special_dish
