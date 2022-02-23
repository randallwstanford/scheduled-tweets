ActiveRecord::Schema[7.0].define(version: 20_220_222_171_401) do
  create_table 'tweets', force: :cascade do |t|
    t.integer 'user_id', null: false
    t.integer 'twitter_account_id', null: false
    t.text 'body'
    t.datetime 'publish_at'
    t.string 'tweet_id'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
    t.index ['twitter_account_id'], name: 'index_tweets_on_twitter_account_id'
    t.index ['user_id'], name: 'index_tweets_on_user_id'
  end

  create_table 'twitter_accounts', force: :cascade do |t|
    t.integer 'user_id', null: false
    t.string 'name'
    t.string 'username'
    t.string 'image'
    t.string 'token'
    t.string 'secret'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
    t.index ['user_id'], name: 'index_twitter_accounts_on_user_id'
  end

  create_table 'users', force: :cascade do |t|
    t.string 'email', null: false
    t.string 'password_digest'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
  end

  add_foreign_key 'tweets', 'twitter_accounts'
  add_foreign_key 'tweets', 'users'
  add_foreign_key 'twitter_accounts', 'users'
end
