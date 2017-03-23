# Add  code here!
def prime?(number)
  if number > 1
    stop_at = Math.sqrt(number).ceil
  else
    return false
  end
  potential_factors = 2
  long_way_to_check = []

  while potential_factors <= stop_at
    # puts "dividing #{number} by #{potential_factors} gives remainder of #{number % potential_factors}"
    if number % potential_factors == 0
      long_way_to_check.push(false)
    end
    potential_factors +=1
  end

  !long_way_to_check.include?(false)
end
