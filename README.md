# README


## アプリケーション名
 シェアレク(現在開発中)

## アプリケーション概要
 レクリエーションの投稿、アレンジの投稿を通して、様々なレクリエーションの共有ができる

## URL

## テスト用アカウント

## 利用方法
 レクリエーションの投稿  
 1.トップページ新規登録ボタンをクリック、新規登録フォーム入力後「新規登録」ボタンをクリックする  
 2.トップページ新規投稿ボタンをクリックし、新規投稿フォームを入力後「投稿」ボタンをクリックする  
 アレンジ投稿  
 1.トップページよりアレンジを投稿したいレクリエーションを選んでクリックし、詳細ページに遷移する  
 2.詳細ページよりアレンジ投稿ボタンをクリックし、アレンジ投稿フォームへ入力後「投稿」ボタンをクリックする  

## アプリケーションを作成した背景
 介護職員をしていた経験から感じた課題  
 1.日々多くの業務に追われる中、毎日のレクリエーションのネタを考えたり準備することが大変で皆も困っていた  
 2.レクリエーション紹介サイトはあっても自分の施設の職員やご利用者、環境などに合わせアレンジが必要  
 上記を受け、レクリエーションやアレンジの共有ができたらネタ切れ解消に繋がり、またアレンジの幅も広がるのでは？と考え、  
 レクリエーション共有アプリを作ろうと思いました。  

## 洗い出した用件
 [用件定義シート]  
 https://docs.google.com/spreadsheets/d/1BJ2qFIJ-pPTMNUTTSvUfBrfdXn3Qdf6RqPU3h2BAoAc/edit#gid=982722306  

## 実装した機能についての画像やGIF、およびその説明

## 実装予定の機能

## DB設計
## ER図
 https://i.gyazo.com/3ca8bfdb73f876d9f7ec54b8bb5cc13b.png  

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

## 画面遷移図

## 開発環境

## ローカルでの動作環境

## 工夫したポイント