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

@hobby = Hobby.new
@hobby.name = '洗濯機の中身がぐるぐる回るのを眺める'
@hobby.about =
@hobby.goodNum = 203
@hobby.save

@hobby = Hobby.new
@hobby.name = '石と間違えてスマホを川に投げて落ち込むシミュレーションをする'
@hobby.about =
@hobby.goodNum = 7
@hobby.save

@hobby = Hobby.new
@hobby.name = '撮り鉄を撮る'
@hobby.about =
@hobby.goodNum = 2
@hobby.save

@hobby = Hobby.new
@hobby.name = '罰ゲームのときに3回回ってニャンを毎回提案する'
@hobby.about =
@hobby.goodNum = 0
@hobby.save

@hobby = Hobby.new
@hobby.name = '一番飛ばない紙飛行機を作る'
@hobby.about =
@hobby.goodNum = 133
@hobby.save

@hobby = Hobby.new
@hobby.name = 'キーボードでA-Zまで入力'
@hobby.about =
@hobby.goodNum = 37
@hobby.save

@hobby = Hobby.new
@hobby.name = 'Enterキーを気持ちよく鳴らす'
@hobby.about =
@hobby.goodNum = 10
@hobby.save

@hobby = Hobby.new
@hobby.name = '牛乳瓶の蓋を集める'
@hobby.about =
@hobby.goodNum = 133
@hobby.save

@hobby = Hobby.new
@hobby.name = '保護フィルム貼りタイムアタック'
@hobby.about =
@hobby.goodNum = 69
@hobby.save

@hobby = Hobby.new
@hobby.name = '奥に陳列された商品を手前に並べなおす'
@hobby.about =
@hobby.goodNum = 29
@hobby.save

@title = Title.new
@title.name = '趣味コレクター'
@title.about = '常人には理解できない量の趣味を持っている人に与えられる称号'
@title.save

@title = Title.new
@title.name = '洗濯機ぐるぐるガン見Award'
@title.about = ' 洗濯機をずっと見ていられる人に送られるありがたい賞'
@title.save

@title = Title.new
@title.name = '英語をA-Zまで入力早かったで賞'
@title.about = '達人だからこそできるパソコンのタイピング'
@title.save

@title = Title.new
@title.name = 'できるだけ小さい練り消しを作れたで賞'
@title.about = '練るという行為の概念を拡張した存在に'
@title.save
