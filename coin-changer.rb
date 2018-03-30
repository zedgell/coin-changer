def get_change(cents_received)
    coins_returned = {}
    coins = {"quarter" => 25, "dime" => 10, "nickel" => 5, "penny" => 1}
    puts "amount received is #{cents_received} cents"
    amount_given = cents_received
coins.each do |coin, value|
    if amount_given >= 0
    coins_returned[coin] = amount_given / value
    i = coins_returned[coin] * value
    puts coins_returned
    amount_given = amount_given - i
    end
    coins_returned
        
end
puts "#{cents_received} amounts to #{coins_returned["quarter"]} quarters and #{coins_returned["dime"]} dimes 
and #{coins_returned["nickel"]} nickels and #{coins_returned["penny"]} pennies"
end
loop do
puts "how much do you have in cents?"
get_change(gets.chop.to_i)
puts "are you finished"
done = gets.chop
if done == "yes"
    puts "thank you for using coin-changer"
    puts "by zachary edgell"
    break
elsif done == "no"
    puts "okay type in the amount you have when your ready"
end
end   