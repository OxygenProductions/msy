# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :post do
    title "MyString"
    summary "MyText"
    content "MyText"
    permalink "MyString"
    date "2013-06-30"
  end
end
