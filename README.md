## 概要

Rails学習用アプリ初級編。
バグ/エラーが10個仕込まれているので、探し当てて修正を行う。
内容は基本的なものがほとんど。

- エラー -> 画面が表示されない
- バグ -> 意図した通りの挙動になっていない

## 対象者

- Railsの書籍を1冊以上読んでいるまたはRailsチュートリアルを完了させている程度
- Railsの実務経験がない

## デバッグ実施手順

- 環境構築手順に従って環境構築を行う
- 回答雛形シートをコピー
  - [【Rails学習初級編】デバッグ回答雛形](https://docs.google.com/spreadsheets/d/1wVLgIyGdn2iWxYrlwEMCf-mwLvRpuVeixLeiJm91MKs/edit?usp=sharing)
- デバッグ開始
- バグ/エラーを見つけたらシートに記入していく
- バグ/エラーの修正ができたらシートに記入していく
  - 1つのバグ/エラーの対応毎にコミットを行う
- 制限時間になったら答えを確認して点数をつける
  - 採点者がいる場合はPRを作成し、チェックしてもらう
  
  
## ルール

- 制限時間は20分とする。
- バグ/エラーを見つければ1点、修正ができれば2点、発表したら1点
  - バグ/エラーは10個あるので最高40点とする。

## 環境構築手順
### 環境
- ruby v2.5.1
- rails v5.2.2
- sqlite

### 各種gemインストール

```
bundle install --path=vendor/bundle
```

- 注) ローカル環境にRuby 2.5.1が入っておらずinstallできない場合は[こちら](https://qiita.com/akisanpony/items/ae9d8eed72945de98285)を参考にバージョンアップしてください

### データ準備

```
rails db:create # DB作成
rails db:migrate # テーブル作成
rails db:seed # 初期データ投入
```

データが投入されたか確認

```
rails c # コンソール開始
irb(main):001:0> User.count
   (0.6ms)  SELECT COUNT(*) FROM "users"
=> 2
```

### 画面確認

サーバ起動
```
rails s
```

`http://localhost:3000` にアクセスしてログイン画面が表示されればOK。

### テスト開始準備

ブランチを切り替えてからテスト実施してください。 
```
git checkout debug-test
```

## メールの確認について

ローカル環境での処理としてはメールは実際には送信されません。
gemの `letter_opener_web` を利用しているため送信したメールは `http://localhost:3000/letter_opener` にアクセスしてブラウザから確認することができます。
