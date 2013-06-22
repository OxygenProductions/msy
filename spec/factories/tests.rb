# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :test do
    first_name "MyString"
    last_name "MyString"
    bio "MyText"
  end
end
