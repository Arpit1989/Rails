# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :blogspot do
    name "MyString"
    title "MyString"
    content "MyText"
    User nil
  end
end
