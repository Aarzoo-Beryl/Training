#!/usr/bin/ruby

#creating a class

class Customer 
	@@no_of_customer = 0

	def initialize(id,name,addr)
		@@no_of_customer+=1
		@cust_id = id
		@cust_name = name
		@cust_addr = addr
	end

	def details()
		puts "Customer id - #@cust_id"
		puts "Customer name - #@cust_name"
		puts "Customer addr - #@cust_addr"
	end

	def total_customers()
		puts "Total customer - #@@no_of_customer"
	end

end

#initializing objects to the class

cust1 = Customer.new("1","Aarzoo","Faridabad")
cust2 = Customer.new("2","Abhishek","Palwal")
cust3 = Customer.new("3","Muskan","Surrey BC")
cust4 = Customer.new("4","Taehyung","Seoul")

#calling methods
cust1.details()
cust1.total_customers()
cust2.details()
cust2.total_customers()
cust3.details()
cust3.total_customers()
cust4.details()
cust4.total_customers()








#output od ruby main.rb - 

#           Customer id - 1
#           Customer name - Aarzoo
#           Customer addr - Faridabad
#           Total customer - 4
#           Customer id - 2
#           Customer name - Abhishek
#           Customer addr - Palwal
#           Total customer - 4
#           Customer id - 3
#           Customer name - Muskan
#           Customer addr - Surrey BC
#           Total customer - 4
#           Customer id - 4
#           Customer name - Taehyung
#           Customer addr - Seoul
#           Total customer - 4