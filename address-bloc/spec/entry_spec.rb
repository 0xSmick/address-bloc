require_relative '../models/entry.rb'
 
 RSpec.describe Entry do

 	context "attributes" do

 		it "should respond to name" do
 			entry = Entry.new('Sheldon Smickley','856.981.0548','sheldon.smickley@gmail.com')

 			expect(entry).to respond_to(:name)

 		end

 		it "should respond to phone number" do
 			entry = Entry.new('Sheldon Smickley','856.981.0548','sheldon.smickley@gmail.com')

 			expect(entry).to respond_to(:phone_number)

 		end

 		it "should respond to email" do
 			entry = Entry.new('Sheldon Smickley','856.981.0548','sheldon.smickley@gmail.com')

 			expect(entry).to respond_to(:email)

 		end
 	end

 	context "#to_s" do
 		it "prints an entry as a string" do
 			entry = Entry.new('Sheldon Smickley','856.981.0548','sheldon.smickley@gmail.com')
 			expected_string = "Name: Sheldon Smickley\nPhone Number: 856.981.0548\nEmail: sheldon.smickley@gmail.com"

 			expect(entry.to_s).to eq(expected_string)
 		end
 	end
end