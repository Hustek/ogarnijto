FactoryGirl.define do
  factory :user do
    association :house
    nick "MyString"
avatar "MyString"
sequence (:email) {|n| "johndoe#{n}@example.com"}
password_digest "MyString"
house_id 1
  end

end
