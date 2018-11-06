require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'

puts "Exercise 4"
puts "----------"

# Your code goes here ...
store3 = Store.create(name: "Surrey", annual_revenue: 224000, mens_apparel: false, womens_apparel: true)
store3.save
store4 = Store.create(name: "Whistler", annual_revenue: 1900000, mens_apparel: true, womens_apparel: false)
store4.save
store5 = Store.create(name: "Yaletown", annual_revenue: 430000, mens_apparel: true, womens_apparel: true)
store5.save

@men_stores = Store.where(mens_apparel: true).order(id: :asc)
@men_stores.each do |store|
  puts "Store name: #{store.name}, annual revenue:  #{store.annual_revenue}"
end


puts Store.count