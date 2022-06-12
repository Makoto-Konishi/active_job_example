class AsyncLogJob < ApplicationJob
  queue_as :default

  # performメソッド: 非同期処理実行時に呼ばれる
  # messageを引数で受け取り、AsyncLogモデルを使ってDBに保存する
  def perform(message: 'hello')
    AsyncLog.create!(message: message) # DBに保存する
  end
end
