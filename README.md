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
| image                | string |              |
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


