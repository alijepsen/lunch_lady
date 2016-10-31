require 'pry'

class Meal
  attr_accessor :dish, :price, :description

  def initialize(dish, price, description)
    @dish = dish
    @price = price
    @description = description
  end
end


@meat_menu = [
  { dish: 'Fried Chicken', price: 5.99, description: "It's a down-home southern classic."},
  { dish: 'Pork Chop', price: 4.99, description: '...and its smothered in apple bourbon chutney...MmmmmMmmmm!!!'},
  { dish: 'Sugar-Cured Ham', price: 4.99, description: '...its so good...you do not want to miss that, Honey!'},
  { dish: 'Meatloaf', price: 4.75, description: "...and it tastes so good, you'll be fixin' for more!"}
]

@threes_menu = [
      { dish: 'Mashed Potatoes', price: 1.75, description: '..it will warm your heart and belly...'},
      { dish: 'Fried Okra', price: 1.95, description: 'it is absolutely heavenly!'},
      { dish: 'Cornbread', price: 0.95, description: 'its a simple wonder!'},
      { dish: 'Creamed Corn', price: 0.75, description: 'thats sweetened with nutmeg butter'},
      { dish: 'Cheddar Grits', price: 0.95, description: 'its made with Gruyere...delicious!'},
      { dish: 'Black-Eyed Peas', price: 2.75, description: 'that has salty bacon drippings'},
      { dish: 'Red Rice', price: 1.25, description: 'thats swimmin with onions and peppers'}
]

def welcome
  puts "Welcome to the Lunch Lady Exercise; Let's go somewhere good...\n\n ***Harold's Meat 'N' Three ****"
  puts "(That's 1 meat and 3 sides for Yankees...)\n\n"
end

def pick_meat
  #puts "Pick a Meat\n"
  #puts @meat_menu.each { |x,i| puts "* #{x[:dish]}" }
  @meat_names = @meat_menu.map { |x| "* #{x[:dish]}" }
  @meat_price = @meat_menu.map { |x| "Today that's $#{x[:price]}" } #not sure we want to do this here
  @meat_description = @meat_menu.map { |x| "#{x[:description]}" } # not sure we want to do this here
  #@meat.each { |x, i| puts "#{x[:name]} $#{x[:price]} ~ #{x[:description]}\n" }
  #@meat_choice = gets.strip
  puts @meat_names #not sure this needs to be an instance var, but I think it does since it's a class meal > break out
  print "\nPick a Meat: "
  @meat_choice = gets.strip
end


def meat_choice_price #> main_dish_choice
  case @meat_choice
    when 'Fried Chicken','fried chicken'
      puts @meat_price[0]
      puts @meat_description[0]
    when 'Pork Chop', 'pork chop'
      puts @meat_price[1]
      puts @meat_description[1] # take this out if we want a sep function for description
    when 'Sugar-Cured Ham', 'Ham', 'sugar-cured ham', 'Sugar Cured Ham'
      puts @meat_price[2]
      puts @meat_description[2]
    when 'Meatloaf', 'meatloaf', 'meat loaf'
      puts @meat_price[3]
      puts @meat_description[3]
    else
      puts "We're out of that today, pick from what we have"
      pick_meat
    end
end


def pick_threes
  puts "\nLook at these delicious sides:\n\n"
  @threes_names = @threes_menu.map { |s| "* #{s[:dish]}" }
  @threes_price = @threes_menu.map { |s| "Today that's $#{s[:price]}" } #probably a better way for currency
  @threes_description = @threes_menu.map { |s| "#{s[:description]}" }
  puts @threes_names
  print "\nPick a side: "
  #@threes_choice = gets.strip
  #@threes_choices << threes_select
end



@threes_choice =[]

def add_threes #add_threes - threes_choice_price
  @threes_choice = gets.strip
  case @threes_choice
    when 'Mashed Potatoes', 'mashed potatoes', 'potatoes'
      puts @threes_price[0]
      puts @threes_description[0]
    when 'Fried Okra', 'fried okra', 'okra', 'Okra'
      puts @threes_price[1]
      puts @threes_description[1] # take this out if we want a sep function for description
    when 'Cornbread', 'cornbread'
      puts @threes_price[2]
      puts @threes_description[2]
    when 'Creamed Corn'
      puts @threes_price[3]
      puts @threes_description[3]
    when 'Cheddar Grits'
      puts @threes_price[4]
      puts @threes_description[4]
    when 'Black-Eyed Peas', 'Black Eyed Peas'
      puts @threes_price[5]
      puts @threes_description[5]
    when 'Red Rice', 'red rice'
      puts @threes_price[6]
      puts @threes_description[6]
    else
      puts "We're out of that side, pick another please"
    end

end



  #while @threes_choice.length > 4 do #can't figure out how to loop thru and store
     #add_threes - threes_choice_price


def meal
  puts "So you have #{@meat_choice} and #{@threes_choice}"
end


def full_order
  puts "Okay so your full order is #{@meat_key} with sides of #{@threes.dish}"
end

def total
  total = "#{@meat_choice} + #{@threes_choice_price}" #this doesn't work
  puts "Now you total is $#{total}"
end

welcome
pick_meat
meat_choice_price
pick_threes
add_threes #add_threes - threes_choice_price
meal
total
