def favorite_restaurant(restaurants_1, restaurants_2)
    combined_rankings = build_rankings(restaurants_1)
    combined_rankings = build_rankings(restaurants_2, combined_rankings)

    best_choice = "Yelpwich"
    best_rank = nil

    restaurants_1.each do |rest|
        if restaurants_2.include?(rest) && (!best_rank || combined_rankings[rest] < best_rank)
          best_rank = combined_rankings[rest]
          best_choice = rest
        end
    end

    restaurants_2.each do |rest|
        if restaurants_1.include?(rest) && combined_rankings[rest] < best_rank
            best_choice = rest
        end
    end

    return best_choice
end

def build_rankings(restaurants, rankings = {})
    restaurants.each.with_index do |rest, i|
        rank = i + 1
        rankings[rest] ? rankings[rest] += rank : rankings[rest] = rank
    end
    return rankings
end

restaurants_1 = ['El Farolito', 'Japa Curry', 'Eatsa']
restaurants_2 = ['Japa Curry', 'Eatsa', 'Ayola', 'Working Girls']

favorite_restaurant(restaurants_1, restaurants_2)
