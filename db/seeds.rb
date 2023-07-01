seed_amount = 50

puts "Creating #{seed_amount} movies..."
seed_amount.times do
    Movie.create(
        name: Faker::Movie.title,
        synopsis: Faker::Lorem.paragraph(sentence_count: 4),
        director: Faker::Name.name
    )
end

puts "Creating #{seed_amount} series..."
seed_amount.times do
    Series.create(
        name: Faker::Movie.title,
        synopsis: Faker::Lorem.paragraph(sentence_count: 4),
        director: Faker::Name.name
    )
end

puts "Creating #{seed_amount} documentaries..."
seed_amount.times do
    DocumentaryFilm.create(
        name: Faker::Movie.title,
        synopsis: Faker::Lorem.paragraph(sentence_count: 4),
        director: Faker::Name.name
    )
end
