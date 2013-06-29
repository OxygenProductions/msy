# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :testimonial do
    title "MyString"
    summary "MyText"
    content "MyText"
    weight 1
  end
end
