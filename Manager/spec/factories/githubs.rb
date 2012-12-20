# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :github do
    github_url ""
    User nil
  end
end
