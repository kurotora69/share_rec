# README

## usersテーブル

 | Colum               | Type     | Options                   |
 | ------------------- | -------- | ------------------------- |
 | nickname            | string   | null: false               |
 | email               | string   | null: false, unique: true |
 | encrypted_password  | string   | null: false               |
 | nursing_home        | string   | null: false               |
 | occupation          | string   | null: false               |

### Association
 - has_many :recreations
 - has_many :arrangements



## recreationsテーブル

 | Colum               | Type         | Options                        |
 | ------------------- | ------------ | ------------------------------ |
 | title               | string       | null: false                    |
 | explanation         | text         | null: false                    |
 | tool                | text         | null: false                    |
 | posture             | string       | null: false                    |
 | place               | string       | null: false                    |
 | staff_number        | integer      | null: false                    |
 | care_number         | integer      | null: false                    |
 | user                | references   | null: false, foreign_key: true |

### Association
 - has_many :arrangements , through: :rec_arrangements
 - has_many :genre_tags , through: :rec_genres
 - belongs_to :user



## rec_arrangementsテーブル

 | Colum               | Type         | Options                        |
 | ------------------- | ------------ | ------------------------------ |
 | recreation          | references   | null: false, foreign_key: true |
 | arrangement         | references   | null: false, foreign_key: true |

### Association
 - belongs_to :recreation 
 - belongs_to :arrangement



## arrangementsテーブル

 | Colum               | Type         | Options                        |
 | ------------------- | ------------ | ------------------------------ |
 | title               | string       | null: false                    |
 | explanation         | text         | null: false                    |
 | tool                | text         | null: false                    |
 | posture             | string       | null: false                    |
 | place               | string       | null: false                    |
 | staff_number        | integer      | null: false                    |
 | care_number         | integer      | null: false                    |
 | user                | references   | null: false, foreign_key: true |
 
### Association
 - has_many :recreations, through: :rec_arrangements
 - belongs_to :user  



## rec_genresテーブル

 | Colum               | Type         | Options                        |
 | ------------------- | ------------ | ------------------------------ |
 | recreation          | references   | null: false, foreign_key: true |
 | genre_tag           | references   | null: false, foreign_key: true |

### Association
 - belongs_to :recreation 
 - belongs_to :genre_tag 



## genre_tagsテーブル

 | Colum               | Type         | Options                        |
 | ------------------- | ------------ | ------------------------------ |
 | genre_tag           | integer      | null: false                    |

### Association 
 - has_many :recreations, through: :rec_genres