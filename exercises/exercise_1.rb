require_relative '../setup'

puts "Exercise 1"
puts "----------"

# Your code goes below here ...

store1 = Store.create(name: "Burnaby", annual_revenue: 3000000, mens_apparel: true, womens_apparel: true)
store1.save
store2 = Store.create(name: "Richmond", annual_revenue: 1260000, mens_apparel: false, womens_apparel: true)
store2.save
store3 = Store.create(name: "Gastown", annual_revenue: 190000, mens_apparel: true, womens_apparel: false)
store3.save

puts Store.count


 # create_table :stores do |t|
 #    t.column :name, :string
 #    t.column :annual_revenue, :integer
 #    t.column :mens_apparel, :boolean
 #    t.column :womens_apparel, :boolean
 #    t.timestamps null: false