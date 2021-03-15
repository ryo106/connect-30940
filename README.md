# アプリ名
connect -SNSをもっと身近に-

# 概要
connect（コネクト）はアクティブシニア向けの「始めやすい、わかりやすい」を理念としたSNS学習サービスアプリです。<br>
当該指定の教科書の内容であれば、いつでもオペレーターに電話（FaceTime）やチャットにて質問をすることができます。<br>
またLINEやFacebookなど現存のSNSを利用する前に、当該サービスの中にある画像投稿機能、コメント機能、チャット機能、ユーザー編集機能などを使用いただくことで、SNSに不慣れなシニアの方でも自分一人で自信を持ってSNSを利用可能にすることが目的です。

# 本番環境
https://connect-30940.herokuapp.com/
# ログインID
- ID:<br>
test
- パスワード：<br>
1234

# テストID 
## 管理者側
- 管理者（メンター）ID： <br>
menter1@menter1.com 
- 管理者（メンター）パスワード： <br>
menter1　
## ユーザー側
### ユーザー1（例太郎）
- ユーザー1(例太郎)ID： <br>
reitarou1@reitarou.com 
- ユーザー1（例太郎）パスワード： <br>
reitarou1
### ユーザー2（例子）
- ユーザー2(例子)ID： <br>
reiko11@reiko1.com 
- ユーザー2（例子）パスワード： <br>
reiko1

# 制作背景（意図）
高齢者を中心とした、いわゆるデジタル難民を救いたいという背景がありました。<br>
具体例として、私の二人の祖母がガラケーのサービス終了と共に、スマートフォンへ買い替えざる終えない状況がありました。<br>
幸い本人たちは前向きにSNSの教科書等を購入して学習に努めましたが、教科書の内容が分からずスマートフォンの使用を億劫に感じていました。<br>
結果的に操作で分からないことは、私や家族が電話で操作説明をすることが現状も続いています。<br>
また私たち家族はいつでも連絡して構わないと伝えましたが、やはり本人達からすると何度も電話するのは気が引けるということでした。<br>
こうした環境は他家庭でも起こりうる問題と仮定し、いつでも気軽に質問でき、学んだことをアプリ内でアウトプットも兼ねられるような当該学習サービスを開発するに至りました。<br>

# DEMO
## トップページ（検索一覧画面）
![6630640f1f04c855267d9b2396dcc960](https://user-images.githubusercontent.com/73945913/111111432-a2a6c780-85a1-11eb-8c50-43b387c5be5a.gif)
### 工夫した点
- ページ上段に機能を集約して使いやすさを意識しました
- 主な機能をアイコン化し、わかりやすさを心がけました
- 右上に自身のプロフィール写真を表示させることで、よりSNSらしさを意識しました
## 新規登録画面
![40c225838c635fb7a26738ff9b97367d](https://user-images.githubusercontent.com/73945913/111111682-25c81d80-85a2-11eb-8421-79a1dd489bf2.gif)
![5068e0632086d5b1384d8d5828b78e53](https://user-images.githubusercontent.com/73945913/111123074-3bddda00-85b2-11eb-8381-b083fc5c50e7.gif)
![5b2f0c3fd3f90af29e5274620278a5fe](https://user-images.githubusercontent.com/73945913/111123646-f5d54600-85b2-11eb-9ab0-7ada544707ac.gif)
### 工夫した点
- 本人写真・趣味・プロフィールの項目を記載できるようにしました
- 入力エラーが出た際には日本語表示に変更し、わかりやすさを意識しました
- 写真登録の際はプレビュー画面が表示されるよう実装しました
- 趣味、プロフィール欄は改行などがそのまま適用できるようバリデーションを追加しました

## 電話機能
![5826f0e0d2698ac2ce281372928724aa](https://user-images.githubusercontent.com/73945913/111112080-e817c480-85a2-11eb-8b71-aef0a3524ac0.gif)
### 工夫した点
- 電話番号をクリックすると自動で繋がるよう設定しました（現状は111番の線路試験受付で設定）
- 当該機能はログインなしでもアクセルできるようにバリデーションを実装しました
- オペレーターの写真を使用し、わかりやすい表示を心がけました
## 画像投稿機能
![453da4659f7bf376ae71f916cc91c7f1](https://user-images.githubusercontent.com/73945913/111112373-65dbd000-85a3-11eb-80f4-371c06539756.gif)
### 工夫した点
- 投稿した人の写真が一覧で表示され、写真右下に誰が投稿したかわかるよう実装しました
- 投稿者の名前をクリックすると、プロフィールが見れるよう実装しました
- AWSサーバーのS3を利用し、画像が消失しないよう実装しました
## コメント機能
![8c10341019d25eebd44d1a036d8cca31](https://user-images.githubusercontent.com/73945913/111112764-11852000-85a4-11eb-8490-97ef3df56990.gif)
### 工夫した点
- 画像をクリックするとコメント機能に遷移し、写真に対してコメント投稿できるよう実装しました
- 主な機能のアイコンを設置し、わかりやすさを心がけました
- 右上に自身のプロフィール写真を表示させることで、よりSNSらしさを意識しました
## チャット機能
![fc1d491fdd4d242cc64925c151053589](https://user-images.githubusercontent.com/73945913/111113316-efd86880-85a4-11eb-8c55-7031760bb704.gif)
![7c77f59ff16f22d66e09acb86de788d3](https://user-images.githubusercontent.com/73945913/111113537-49d92e00-85a5-11eb-90aa-62bb69595f1c.gif)
### 工夫した点
- コメント投稿機能の他に、気になった会員同士で1対1でコミュニケーションを取れるようチャット機能を実装しました
- 「チャットルーム作成」ボタンから新規チャットルームに遷移して、チャットメンバー蘭をクリックすると登録されているメンバーの名前が表示されるよう実装しました
- 管理者（メンター）も登録してるので、分からないことはチャットからでも質問することができるように実装しました
## 商品購入機能
![4166257b22fd7f3c0eced91f40597723](https://user-images.githubusercontent.com/73945913/111113867-c4a24900-85a5-11eb-8ba2-575cc41013d9.gif)
![ed0f9527d7b2c9405f6a0a758e72a7c1](https://user-images.githubusercontent.com/73945913/111114129-2793e000-85a6-11eb-8ccd-b4ccd97614ac.gif)
![be3da0d21d17805fd126a477a23534ac](https://user-images.githubusercontent.com/73945913/111117015-409e9000-85aa-11eb-8308-0ad985a34d18.gif)
### 工夫した点
- PAY.JPを用いたクレジットカード決済機能を実装しました
- 購入後、購入確認画面を追加して、わかりやすさを意識しました
- 管理者のみ「商品を追加する」ボタンが表示できるよう実装しました
- 新規登録同様、入力にエラーが出た際には日本語表示できるよう変更しました
## プロフィール編集機能
![09f33801f096b29408e272c663f981dc](https://user-images.githubusercontent.com/73945913/111114444-98d39300-85a6-11eb-94f1-3f96d8236e29.gif)
![6138fe75850dcbbc92bb3be19d727b39](https://user-images.githubusercontent.com/73945913/111114653-dafcd480-85a6-11eb-9f38-00c822fd7da9.gif)
### 工夫した点
- プロフィール写真が通常アップロード内に保存されることを、S3へダイレクトに保存できるよう設定しました
- パスワードの入力、変更なしで各項目を編集できるようバリデーションを設定しました
- 新規登録同様、写真変更の際はプレビュー画面が表示されるよう実装しました

# 開発環境
- Ruby
- RUby on rails
- JavaScript
- MySQL
- Github
- heroku
- AWS(S3)
- Visual Studio Code
- 
# 課題や今後実装したい機能
- SNSアカウントでのログイン機能の追加を検討しています、一つのアカウントで様々なSNSにログインすることで利便性が高くなると考えています
- 画像投稿機能に検索機能の追加を検討しています、それによりユーザーが気に入った投稿を見つけやすくなると考えています
- 「いいね」ボタンの追加を検討しています、現存のSNS機能により近いアプリケーションになると考えています

# テーブル設計

## users テーブル

| Column               | Type   | Options      |
| -------------------- | ------ | ------------ |
| email                | string | null: false  |
| encrypted_password   | string | null: false  |
| nickname             | string | null: false  |
| first_name           | string | null: false  |
| last_name            | string | null: false  |
| first_name_kana      | string | null: false  |
| last_name_kana       | string | null: false  |
| birthday             | date   | null: false  |
| image                | string | null: false  |       |
| profile              | text   |              |
| hobby                | text   |              |

### Association

- has_many :items
- has_many :orders
- has_many :room_users
- has_many :rooms, through: :room_users
- has_many :messages
- has_many :prototypes 


## items テーブル

| Column                 | Type       | Options                        |
| ---------------------- | ---------- | ------------------------------ |
| title                  | string     | null: false                    |
| text                   | text       | null: false                    |
| category_id            | integer    | null: false                    |
| product_status_id      | integer    | null: false                    |
| shipping_fee_burden_id | integer    | null: false                    |
| prefecture_id          | integer    | null: false                    |
| delivery_day_id        | integer    | null: false                    |
| price                  | integer    | null: false                    |
| user                   | references | null: false, foreign_key: true |

### Association

- has_one :order
- belongs_to :user 
- has_one_attached :image


## orders テーブル

| Column    | Type       | Options                        |
| --------- | ---------- | ------------------------------ |
| user      | references | null: false, foreign_key: true |
| item      | references | null: false, foreign_key: true |

### Association

- has_one :address
- belongs_to :item 
- belongs_to :user 


## addresses テーブル

| Column               | Type      | Options                        |
| -------------------- | --------- | ------------------------------ |
| postal_code          | string    | null: false                    |
| prefecture_id        | integer   | null: false                    |
| municipality         | string    | null: false                    |
| address              | string    | null: false                    |
| building_name        | string    |                                |
| phone_number         | string    | null: false                    |
| order                | reference | null: false, foreign_key: true |

### Association

- belongs_to :order 


## messages テーブル

| Column               | Type      | Options                        |
| -------------------- | --------- | ------------------------------ |
| content              | string    | null: false                    |
| room                 | reference | null: false, foreign_key: true |
| user                 | reference | null: false, foreign_key: true |

### Association

- belongs_to :room
- belongs_to :user
- has_one_attached :image


## rooms テーブル

| Column               | Type      | Options                        |
| -------------------- | --------- | ------------------------------ |
| name                 | string    | null: false                    |

### Association

- has_many :room_users, dependent: :destroy
- has_many :users, through: :room_users
- has_many :messages, dependent: :destroy


## rooms_users テーブル

| Column               | Type      | Options                        |
| -------------------- | --------- | ------------------------------ |
| room                 | reference | null: false, foreign_key: true |
| user                 | reference | null: false, foreign_key: true |

### Association

- belongs_to :room
- belongs_to :user


## prototypes テーブル

| Column               | Type      | Options                        |
| -------------------- | --------- | ------------------------------ |
| title                | string    | null: false                    |
| text                 | text      | null: false                    |
| etc                  | text      | null: false                    |
| user                 | reference | null: false, foreign_key: true |

### Association

- belongs_to :user
- has_one_attached :image
- has_many :comments, dependent: :destroy


## comments テーブル

| Column               | Type      | Options                        |
| -------------------- | --------- | ------------------------------ |
| text                 | string    | null: false                    |
| prototype            | reference | null: false, foreign_key: true |
| user                 | reference | null: false, foreign_key: true |

### Association

- belongs_to :user
- belongs_to :prototype



<!-- # README

This README would normally document whatever steps are necessary to get the
application up and running.
Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ... -->




