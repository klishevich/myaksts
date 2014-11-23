# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :applic do
    fio 'MyString'
    uch_stepen 'MyString'
    city 'MyString'
    company 'MyString'
    position 'MyString'
    specialization 'MyString'
    phone 'MyString'
    email 'MyString'
    conf_topic 'MyText'
    conf_section 'MyString'
    conf_coauthors 'MyText'
    is_zaochnaya false
  end
end
