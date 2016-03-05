FactoryGirl.define do
  factory :user do
    name 'Named User'
    email 'user@blogjan.com'
    password 'fuckingpassword'
  end

  factory :admin, class: User do
    name 'Named Admin'
    email 'admin@blogjan.com'
    password 'fuckingpassword'
    admin true
  end
end
