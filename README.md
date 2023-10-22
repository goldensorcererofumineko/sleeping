## users テーブル

| Column              | Type   | Options                    |
| ------------------- | ------ | -------------------------- |
| email               | string | null: false, unique: true  |
| encrypted_password  | string | null: false                |
| nickname            | string | null: false                |

  has_many :sleep_records
  has_many :sleep_statistics

## sleep_records テーブル

| Column     | Type       | Options                        |
| ---------- | ---------- | ------------------------------ |
| start_time | datetime   |                                |
| end_time   | datetime   |                                |
| quality    | integer    | null: false                    |
| memo       | text       |                                |
| user       | references | null: false, foreign_key: true |

  belongs_to :user

## sleep_statistics テーブル

| Column                 | Type       | Options                        |
| ---------------------- | ---------- | ------------------------------ |
| period                 | string     | null: false                    |
| average_sleep_duration | decimal    | null: false                    |
| average_sleep_quality  | decimal    | null: false                    |
| user                   | references | null: false, foreign_key: true |

  belongs_to :user