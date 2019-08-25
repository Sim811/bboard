20.times do
  # Bboard.create(
  #   name: Faker::Music.genre
  # )
  Artist.create(
    name: Faker::Music.band,
    age: Faker::Number.digit,
    genre: Faker::Music.genre
  )
  
end