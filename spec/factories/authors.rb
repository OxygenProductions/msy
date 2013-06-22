# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :author do
    first_name ""
    last_name ""
    biography "MyText"
  end
end
