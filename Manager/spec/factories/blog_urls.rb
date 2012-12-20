# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :blog_url do
    blog_url "MyString"
    User nil
  end
end
