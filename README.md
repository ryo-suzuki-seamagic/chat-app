## users テーブル

|  Column     |  Type      |  Options     |
| ----------- | ---------- | -----------  |
|  name       |  string    |  null: false |
|  email      |  string    |  null: false |
|  password   |  string    |  null: false |

### Association
- has_many :room_users
- has_many :rooms, through: room_users
- has_many :messages

## rooms テーブル

| Column     |  Type     |  Options       |
| ---------- | --------- | -------------- |
| name       | string    | null: false    |

### Association

- has_many :room_users
- has_many :rooms, through: room_users
- has_many :messages

## room_users テーブル

|  Column    |  Type      |  Options                        |
| ---------- | ---------  | ------------------------------- |
| user_id    | references | null: false, foreign_key: ture  |
| room_id    | references | null: false, foreign_key: ture  |

### Association
- belongs_to :room
- belongs_to :user

## messages テーブル

|  Column    |  Type      |  Options                        |
| ---------- | ---------  | ------------------------------- |
| user_id    | references | null: false, foreign_key: ture  |
| room_id    | references | null: false, foreign_key: ture  |

### Association
- belongs_to :room
- belongs_to :user
