User.destroy_all
Country.destroy_all

5.times do 
    User.create(
        name: Faker::TvShows::ParksAndRec.character, 
        username: Faker::TvShows::HeyArnold.character)
end

25.times do 
    Country.create(
        name: Faker::TvShows::ParksAndRec.city, 
        user: User.all.sample)
end

puts "hey you're done!" # confirmation message