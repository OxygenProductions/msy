# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :image do
    image ""
    image_size ""
    image_type ""
    name ""
    card_id ""
    field_id ""
    author_id ""
    env_top_id ""
    env_bottom_id ""
    env_under_id ""
    env_thumb_id 1
  end
end
