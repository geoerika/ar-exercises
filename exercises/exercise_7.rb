require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'
require_relative './exercise_6'

puts "Exercise 7"
puts "----------"

# Your code goes here ...

print "Which store do you go shopping to? "
@store_name = gets.chomp
@store7 = Store.create(name: "#{@store_name}")
@store7.save

@store7.errors.full_messages.each do |message|
  puts message
end

puts Store.count

# ActiveRecord::Schema.define do
#   drop_table :stores if ActiveRecord::Base.connection.table_exists?(:stores)
#   drop_table :employees if ActiveRecord::Base.connection.table_exists?(:employees)
#   create_table :stores do |t|
#     t.column :name, :string
#     t.column :annual_revenue, :integer
#     t.column :mens_apparel, :boolean
#     t.column :womens_apparel, :boolean
#     t.timestamps null: false
#   end
#   create_table :employees do |table|
#     table.references :store
#     table.column :first_name, :string
#     table.column :last_name, :string
#     table.column :hourly_rate, :integer
#     table.timestamps null: false
#   end