`$ rails _4.2.10_ new chatservice`
gem 추가
```ruby
gem 'figaro'
gem 'devise'
gem 'pusher'
```
`$ bundle install`
`$ figaro install`
`$ rails g devise:install`
`$ rails g devise users`

- 채팅방:채팅내용(1:N)
rails g scaffold chat_room title master_id max_count:integer admission_count:integer

rails g model chat user:references chat_room:references message:text
- 채팅방:사람(M:N)
rails g model admission user:references chat_room:references

모델관 관계설정
