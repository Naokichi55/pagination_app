50.times do |n|
  Post.create!(body: "投稿_#{n + 1}" )
end

puts "初期データの投入に成功しました。"