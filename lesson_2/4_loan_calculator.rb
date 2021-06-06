def valid_number?(num)
  num.to_i.to_s == num || num.to_f.to_s == num
end

puts "Welcome to the mortage calculator!"

loan_amount = ''
loop do
  puts "Please enter how much money you want to borrow?"
  loan_amount = gets.chomp
  if valid_number?(loan_amount)
    break
  else
    puts "INVALID NUMBER. Try again."
  end
end

apr_prompt = <<-MSG
Enter the annual percentage rate (APR)
Example: 6% APR, you can type 6.
MSG

apr = ''
loop do
  puts apr_prompt
  apr = gets.chomp
  if valid_number?(apr)
    break
  else
    puts "INVALID NUMBER. Try again"
  end
end
monthly_interest = apr.to_f / 100 / 12

loan_duration = ''
loop do
  puts "How many months is the loan term?"
  loan_duration = gets.chomp
  if valid_number?(loan_duration)
    break
  else
    puts "INVALID NUMBER. Try again."
  end
end

monthly_payment = loan_amount.to_f *
                  (monthly_interest /
                  (1 - (1 + monthly_interest)**(-loan_duration.to_f)))

result_prompt = <<-MSG
You will be paying #{monthly_payment.round(2)} per month.
At #{apr}% APR, the monthly interest is #{monthly_interest}%
The total interest is #{((monthly_payment * 13) - loan_amount.to_f).round(2)}.
MSG
puts result_prompt
