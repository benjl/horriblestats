require 'backbone.rb'

puts "Enter CSV for user data. Leave blank for user_data.csv, 1 for subsample"
userdata = gets.chomp
if userdata === ''
	userdata = "user_data.csv"
elsif userdata === '1'
	userdata = "user_subsample.csv"
end
puts "Enter CSV for ballot data. Leave blank for user_ballots.csv, 1 for subsample"
ballotdata = gets.chomp
if ballotdata === ''
	ballotdata = "user_ballots.csv"
elsif ballotdata === '1'
	ballotdata = "user_ballot_sub.csv"
end

sample = Sample.new(userdata,ballotdata)

dems = sample.generate_demos

sample.printify('demos.csv',['region','age'])

puts "OPERATION COMPLETED BITCHES! :D"

#dems[:region].each do |k,v|
#	puts "#{k} => #{v[0]}, #{v[1] * 100}%"
#end

#dems[:age].each do |k,v|
#	puts "#{k} => #{v[0]}, #{v[1] * 100}%"
#end

#sample.get_specific_user_data("574").each do |k,v|
#	puts "#{k} => #{v}"
#end