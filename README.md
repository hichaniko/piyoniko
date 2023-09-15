# README

## users テーブル 　　　　　　　　　　#新規情報

| Column              | Type   | Options                   |
| ------------------  | ------ | ------------------------- |
| nickname            | string | null: false               |
| encrypted_password  | string | null: false               |
| email               | string | null: false, unique: true |
| last_name           | string | null: false               |
| first_name          | string | null: false               |
| last_name_kana      | string | null: false               |
| first_name_kana     | string | null: false               |
| birthday            | date   | null: false               |


### Association

- has_many :items
- has_many :comments
- has_many :areas



## items テーブル　　　　　　　　　　#育児シェア機能

| Column             | Type      | Options                       |
| ------------------ | --------- | ----------------------------- |
| text               | text      | null: false                   |
| user               | references| null: false,foreign_key: true |


### Association

- belongs_to :user
- has_many :comments


## areas テーブル　　　　　　　　　　#エリア別機能

| Column             | Type      | Options                       |
| ------------------ | --------- | ----------------------------- |
| area_text          | text      | null: false                   |
| prefecture_id      | integer   | null: false                   |
| user               | references| null: false,foreign_key: true |

### Association

- belongs_to :user


## comments テーブル　　　　　　#コメント機能

| Column             | Type      | Options                       |
| ------------------ | --------- | ----------------------------- |
| message            | text      | null: false                   |
| user               | references| null: false,foreign_key: true |
| item               | references| null: false,foreign_key: true |



### Association

- belongs_to :user
- belongs_to :item



