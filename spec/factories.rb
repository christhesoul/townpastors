FactoryGirl.define do
  sequence :email do |n|
    "pastor#{n}@example.com"
  end
 
  factory :pastor do
    email
    password "test"
  end 
end