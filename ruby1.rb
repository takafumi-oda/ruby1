require "csv"

puts "1(新規でメモを作成) 2(既存のメモ編集する)"

memo_type = gets.to_i

case memo_type
  when 1
    puts "拡張子を除いたファイル名を入力してください"
    memo_name = gets.chomp
    puts "メモしたい内容をを入力し、完了したらCtrl+dを入力してください。"
    CSV.open("#{memo_name}.csv","w") do |writing|
      sentence = readlines.map(&:chomp)
      p sentence
      writing << sentence
  end
  when 2
    puts "編集したいファイルの拡張子を除いたファイル名を入力してください"
    memo_name = gets.chomp
    puts "メモしたい内容をを入力し、完了したらCtrl+dを入力してください。"
    CSV.open("#{memo_name}.csv","a") do |writing|
      sentence = readlines.map(&:chomp)
      p sentence
      writing << sentence
  end
else
  puts "1か2が入力されていません。やり直してください。"
end
