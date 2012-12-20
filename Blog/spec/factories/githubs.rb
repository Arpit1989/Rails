# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :github do
    User nil
    GithubUrl "MyString"
    title "MyString"
    Description "MyText"
  end
end
