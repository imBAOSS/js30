def favorite_restaurant(restaurants_1, restaurants_2)
  rankings = {}

  restaurants_1.each.with_index do |rest, i|
    rankings[rest] = { combined_rank: i + 1, in_both: false }
  end

  restaurants_2.each.with_index do |rest, i|
    if rankings[rest]
      rankings[rest][:combined_rank] += i + 1
      rankings[rest][:in_both] = true
    end
  end

  best_choice = "Yelpwich"
  best_rank = nil

  rankings.each_pair do |k,v|
    if v[:in_both] && (best_rank.nil? || v[:combined_rank] < best_rank)
      best_choice = k
      best_rank = v[:combined_rank]
    end
  end

  best_choice
end

restaurants_1 = ['El Farolito', 'Japa Curry', 'Eatsa']
restaurants_2 = ['Japa Curry', 'Eatsa', 'Ayola', 'Working Girls']

favorite_restaurant(restaurants_1, restaurants_2)
