def total_rewards(bank_name, bank_pcb, spending_threshold, month, monthly_spending, bonus = nil)
  bank_cbr = 0
  total_spending = monthly_spending * month
  if bonus.nil? || month < 3
    bank_cbr += ((bank_pcb * monthly_spending) * month)
  elsif !bonus.nil? && month >= 3 && total_spending >= spending_threshold
    bank_cbr += ((bank_pcb * monthly_spending) * month) + bonus
  end
  "\nAfter spending $#{monthly_spending}/month for #{month} months, \nyou will have earned $#{bank_cbr.to_i} in cash back \nrewards with #{bank_name}."
end

puts total_rewards("Chase Ink Business Cash", 0.01, 3_000, 1, 1_300, 300)
puts total_rewards("Chase Bank Unlimited", 0.015, 500, 1, 1_300, 150)

puts

puts total_rewards("Chase Ink Business Cash", 0.01, 3_000, 6, 1_300, 300)
puts total_rewards("Chase Bank Unlimited", 0.015, 500, 6, 1_300, 150)

puts

puts total_rewards("Chase Ink Business Cash", 0.01, 3_000, 12, 1_300, 300)
puts total_rewards("Chase Bank Unlimited", 0.015, 500, 12, 1_300, 150)

puts

puts total_rewards("Chase Ink Business Cash", 0.01, 3_000, 32, 1_300, 3--)
puts total_rewards("Chase Bank Unlimited", 0.015, 500, 32, 1_300, 150)
