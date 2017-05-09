print "Please calculate your estimate with at least one month:\n"
puts
def total_rewards(bank_name, bank_pcb, month, monthly_spending, bonus = nil)
  bank_cbr = 0
  if bonus.nil? || month < 3
    bank_cbr += ((bank_pcb * monthly_spending) * month)
  elsif !bonus.nil? && month >= 3
    bank_cbr += ((bank_pcb * monthly_spending) * month) + bonus
  end
  if month == 1
    "\nAfter spending $#{monthly_spending}/month for #{month} month, \nyou will have earned $#{bank_cbr.to_i} in cash back \nrewards with #{bank_name}."
  else
    "\nAfter spending $#{monthly_spending}/month for #{month} months, \nyou will have earned $#{bank_cbr.to_i} in cash back \nrewards with #{bank_name}."
  end

puts total_rewards("Chase Bank", 0.01, 1, 1_300, 150)
puts total_rewards("Chase Bank Unlimited", 0.015, 1, 1_300, 150)

puts

puts total_rewards("Chase Bank", 0.01, 6, 1_300, 150)
puts total_rewards("Chase Bank Unlimited", 0.015, 6, 1_300, 150)

puts

puts total_rewards("Chase Bank", 0.01, 12, 1_300, 150)
puts total_rewards("Chase Bank Unlimited", 0.015, 12, 1_300, 150)

puts

puts total_rewards("Chase Bank", 0.01, 32, 1_300, 150)
puts total_rewards("Chase Bank Unlimited", 0.015, 32, 1_300, 150)
