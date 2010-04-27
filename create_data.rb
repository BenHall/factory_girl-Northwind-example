require 'factory_girl'
require 'faker'
require 'dir_extension'
require 'active_record'
Dir.require_all 'northwind'

db_config = YAML::load(File.open('database.yml'))
ActiveRecord::Base.establish_connection db_config

Factory.define :category do |c|
    c.Description 'Bob'
end


c = Factory.build(:category)
puts c
puts c.CategoryID
puts c.CategoryName
puts c.Description

c = Factory.stub(:category)
puts c
puts c.CategoryID
puts c.CategoryName
puts c.Description

c = Factory.attributes_for(:category)
puts c
puts c['CategoryID']
puts c['CategoryName']
puts c['Description'] #nil - not sure why...