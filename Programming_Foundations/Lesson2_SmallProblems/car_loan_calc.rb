# build a car loan calculator given the loan amount, APR, and loan years

def prompt(message)
  puts("=> #{message}")
end

def valid_loan?(amount)
  if amount.match(/^\$/)
    amount.delete('$').to_f
  else
    amount.to_f
  end
end

def valid_apr?(apr)
  if apr.match(/%$/)
    apr = apr.delete!('%').to_f / 100
  elsif apr.match(/^0*.\d+/)
   apr = apr.to_f
  else
   apr = apr.to_f / 100
  end
end

def valid_year?(year)
  if year.match(/years?$/)
    prompt('Invalid input. Only integers accepted.')
  else
    year
  end
end

def monthly_int_rate(apr)
  apr.to_f / 12
end

def loan_duration_months(years)
  years.to_f * 12
end

loop do 
  prompt("Enter loan amount: ")
  loan = gets.chomp
  valid_loan?(loan)
  
  prompt("Enter APR: ")
  apr = gets.chomp
  apr = valid_apr?(apr)
  
  intrest = monthly_int_rate(apr)
  
  prompt("Enter loan duration in years: ")
  years = ''
  loop do
    years = gets.chomp
    if valid_year?(years)
      break
    end
  end
  
  months = loan_duration_months(years)
  
  monthly_payment = loan.to_f * (intrest.to_f / (1 - (1 + intrest.to_f)**(-months.to_f)))
  
  prompt("monthly payment: #{format('%02.2f', monthly_payment)}")
  
  prompt("Would you like to make another calculation?")
  answer = gets.chomp
  break unless answer.downcase.start_with?('y')
end

prompt('Thank you! Have a nice day!')