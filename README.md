## users テーブル

| Column   | Type   | Options                   |
| -------- | ------ | ------------------------- |
| email    | string | null: false, unique: true |
| nickname | string | null: false               |
| password | string | null: false               |

### Association

- has_one :privateImformation
- has_many :products
- has_one :credit
- has_one :sns_credential
- has_many :markets

## products テーブル

| Column             | Type    | Options                        |
| ------------------ | ------- | ------------------------------ |
| user_id            | integer | null: false, foreign_key: true |
| name               | string  | null: false                    |
| price              | integer | null: false                    |
| status             | integer | null: false                    |
| message            | text    |                                |
| delivery_fee_payer | integer | null: false                    |
| delivery_agency    | integer | null: false                    |
| delivery_day       | integer | null: false                    |

### Association

- has_many :product_categories
- has_many :product_brands
- has_many :categories, through: :product_categories
- has_many :brands, through: :product_brands
- belongs_to :user
- has_many :images
- has_one :market

## images テーブル

| Column     | Type    | Options                        |
| ---------- | ------- | ------------------------------ |
| product_id | integer | null: false, foreign_key: true |
| image      | string  | null: false                    |

### Association

- belongs_to :product

## profiles テーブル

| Column          | Type    | Options                        |
| --------------- | ------- | ------------------------------ |
| user_id         | integer | null: false, foreign_key: true |
| first_name      | string  | null: false                    |
| last_name       | string  | null: false                    |
| first_name_kana | string  | null: false                    |
| last_name_kana  | string  | null: false                    |
| postal_code     | integer | null: false                    |
| prefecture      | integer | null: false                    |
| city            | string  | null: false                    |
| address_number  | string  | null: false                    |
| building        | string  |                                |
| introduction    | string  |                                |
| avatar          | string  |                                |
| gender          | integer | null: false                    |
| phone_number    | string  | null: false                    |
| birthday        | string  | null: false                    |

### Association

- belongs_to :user

## credits テーブル

| Column         | Type    | Options                        |
| -------------- | ------- | ------------------------------ |
| user_id        | integer | null: false, foreign_key: true |
| costomer_token | string  | null: false                    |

### Asociation

- belogs_to :user

## sns_credentials テーブル

| Column   | Type    | Options     |
| -------- | ------- | ----------- |
| provider | integer | null: false |
| uid      | string  | null: false |
| token    | string  | null: false |
| user_id  | integer | null: flse  |

- belongs_to :user

## brands テーブル

| Column | Type   | Options     |
| ------ | ------ | ----------- |
| name   | string | null: false |

### Association

- has_many :products, through: :product_brands
- has_many :product_brands

## categories テーブル

| Column   | Type   | Options     |
| -------- | ------ | ----------- |
| name     | string | null: false |
| ancestry | string |             |

### Association

- has_many :products, through: :product_categories
- has_many ::product_categories

## product_brands テーブル

| Column     | Type    | Options                        |
| ---------- | ------- | ------------------------------ |
| product_id | integer | null: false, foreign_key: true |
| brand_id   | integer | null: false, foreign_key: true |

### Association

- belongs_to :product
- belongs_to :brand

## product_categories テーブル

| Column     | Type    | Options                        |
| ---------- | ------- | ------------------------------ |
| product_id | integer | null: false, foreign_key: true |
| brand_id   | integer | null: false, foreign_key: true |

### Association

- belongs_to :product
- belongs_to :category

## markets テーブル

| Column     | Type    | Options                        |
| ---------- | ------- | ------------------------------ |
| product_id | integer | null: false, foreign_key: true |
| user_id    | integer | null: false, foreign_key: true |
| phase      | integer | default: 0                     |

### Association

- belongs_to :product
- belongs_to :user
