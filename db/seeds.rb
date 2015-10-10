10.times do |i|
  Board.create(name: "Board #{i + 1}")
end

Board.all.each do |board|
  5.times do
    Article.create(board: board, title: Faker::Book.title, author: Faker::Name.name, body: Faker::Lorem.paragraphs)
  end
end
