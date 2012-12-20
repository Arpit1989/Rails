# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :heroku do
    heroku_url "MyString"
    Project nil
  end
end
