require 'faker'

namespace :db do
	desc "Fill database with sample data"
	task :populate => :environment do
	   Rake::Task['db:reset'].invoke   
	   
	   admin = User.create!(:name => 'Example User',
	                        :email => 'example@example.com',
	                        :password => 'foobar',
	                        :password_confirm => 'foobar')
	   admin.toggle!(:admin)
	            
	   99.times do |n|
	     name = Faker::Name.name
	     email = "example-#{n+1}@example.com" 
	     password = "password"
	     User.create!(:name => name,
	                  :email => email,
	                  :password => password,
	                  :password_confirm => password)
	   end
	end
end