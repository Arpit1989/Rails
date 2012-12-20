# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :project do
    Project_Url "MyString"
    title "MyString"
    description "MyText"
    github nil
  end
end
