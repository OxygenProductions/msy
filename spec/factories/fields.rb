# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :field do
    name ""
    field_type ""
    region ""
    editable ""
    font_family ""
    font_size ""
    letter_spacing ""
    word_spacing ""
    line_height ""
    has_text_shadow ""
    text_shadow ""
    text_align ""
    text ""
    card nil
  end
end
