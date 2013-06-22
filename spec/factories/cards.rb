# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :card do
    name ""
    is_new ""
    card_type ""
    envelope ""
    author nil
  end
end
