FactoryGirl.define do
  factory :user do
    name 'Named User'
    email 'user@blogjan.com'
    password 'useruser'
  end

  factory :admin, class: User do
    name 'Named Admin'
    email 'admin@blogjan.com'
    password 'adminadmin'
    admin true
  end
end
