# README

---------------------------------------------
## bigCategoriesテーブル

|Column|Type  |Options|
|------|------|-------|
|name  |string|       |


### Association
has_many :middleCategories
has_many :goods

----------------------------------------------
## middleCategoriesテーブル

|Column|Type  |Options|
|------|------|-------|
|name  |string|       |

### Association
has_many :smallCategories
has_many :goods
belongs_to :bigCategory

---------------------------------------------
## smallCategoriesテーブル

|Column|Type  |Options|
|------|------|-------|
|name  |string|       |

### Association
has_many :goods
belongs_to :middleCategory

---------------------------------------------
## brandsテーブル

|Column|Type  |Options|
|------|------|-------|
|name  |string|       |

### Association
has_many :goods

---------------------------------------------
## goodsテーブル

|Column|Type  |Options|
|------|------|-------|
|name  |string|       |
|price |integer|      |

### Association
has_many :goodsImages dependent: :destroy_all
has_many :statuses dependent: :destroy_all
belongs_to :user
belongs_to :bigCategory
belongs_to :middleCategory
belongs_to :smallCategory
belongs_to :brand

---------------------------------------------
## Statusテーブル

|Column |Type  |Options|
|-------|------|-------|
|selling|string|       |
|shipping|string|      |
|soldout|string|       |

### Association
belongs_to :user
belongs_to :goods

---------------------------------------------
## goodsImagesテーブル

|Column|Type  |Options|
|------|------|-------|
|image |image |       |

### Association
belongs_to :goods

---------------------------------------------

## usersテーブル

|Column           |Type   |Options|
|-----------------|-------|-------|
|nickname         |string |index: true, null: false  unique: true|
|profile_picture  |image  |       |
|self_introduction|text   |       |
|phone_number     |integer|       |
|email            |string |null: false, unique: true|
|password         |string |null: false, unique: true|
|credit_card      |integer|null: false, unique: true|

### Association
has_many :goods dependent: :destroy_all
has_many :statuses
has_many :evaluations dependent: :destroy_all
has_many :addresses dependent: :destroy_all
has_many :prefectures dependent: :destroy_all
---------------------------------------------
## addressテーブル

|Column    |Type   |Options|
|----------|-------|-------|
|address   |string |       |
|zip_code  |integer|       |

### Association
belongs_to :user

---------------------------------------------
## prefectureテーブル

|Column    |Type   |Options|
|----------|-------|-------|
|prefecture|string |       |

### Association
belongs_to :user

---------------------------------------------

## evaluationsテーブル
|Column     |Type   |Options|
|-----------|-------|-------|
|evaluations|boolean|       |

※enum -> like, soso, dislike

### Association
belongs_to :user




