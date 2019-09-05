## users テーブル

| Column   | Type   | Options                   |
| -------- | ------ | ------------------------- |
| email    | string | null: false, unique: true |
| nickname | string | null: false               |
| password | string | null: false               |

### Association

- has_one :privateImformation
- has_many :products

## products テーブル

| Column       | Type    | Options                        |
| ------------ | ------- | ------------------------------ |
| user_id      | integer | null: false, foreign_key: true |
| product_name | string  | null: false                    |
| price        | integer | null: false                    |
| status       | integer | null: false                    |
| image        | string  |                                |
| message      | text    |                                |

### Association

- has_many :product_categories
- has_many :product_brands
- has_many :categories, through: :product_categories
- has_many :brands, through: :product_brands
- belongs_to :user

## privateImformations テーブル

| Column       | Type    | Options                        |
| ------------ | ------- | ------------------------------ |
| user_id      | integer | null: false, foreign_key: true |
| first_name   | string  | null: false                    |
| last_name    | string  | null: false                    |
| postalcode   | string  | null: false                    |
| address      | text    | null: false                    |
| phone_number | string  | null: false                    |
| birthday     | string  | null: false                    |

### Association

- belongs_to :user

## brands テーブル

| Column     | Type   | Options     |
| ---------- | ------ | ----------- |
| brand_name | string | null: false |

### Association

- has_many :products, through: :product_brands
- has_many :product_brands

## categories テーブル

| Column        | Type   | Options     |
| ------------- | ------ | ----------- |
| category_name | string | null: false |

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
