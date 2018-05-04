# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

@hobby = Hobby.new
@hobby.name = '鳩を追いかける'
@hobby.about = 'きなこが一心不乱に鳩を追いかけるんだよ！'
@hobby.goodNum = 14
@hobby.save

@title = Title.new
@title.name = '趣味コレクター'
@title.about = '常人には理解できない量の趣味を持っている人に与えられる称号'
@title.save
