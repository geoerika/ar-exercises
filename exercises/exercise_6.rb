require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "Exercise 6"
puts "----------"

# Your code goes here ...

@store1.employees.create(first_name: "Khurram", last_name: "Virani", hourly_rate: 60)
@store1.employees.create(first_name: "Adrianne", last_name: "Leroy", hourly_rate: 40)
@store1.employees.create(first_name: "Michaela", last_name: "Johnson", hourly_rate: 45)
@store2.employees.create(first_name: "Bob", last_name: "Marley", hourly_rate: 65)
@store2.employees.create(first_name: "David", last_name: "Murrey", hourly_rate: 55)
@store2.employees.create(first_name: "Jonny", last_name: "Mitchel", hourly_rate: 45)
@store2.employees.create(first_name: "Andrea", last_name: "Boccelli", hourly_rate: 60)
@store1.employees.create(first_name: "Veronica", last_name: "Morris", hourly_rate: 40)
@store1.employees.create(first_name: "Maria", last_name: "McCain", hourly_rate: 60)
@store1.employees.create(first_name: "Billy", last_name: "Idol", hourly_rate: 55)
@store1.employees.create(first_name: "Karin", last_name: "Vamos", hourly_rate: 65)

puts Employee.count

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