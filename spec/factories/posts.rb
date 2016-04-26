FactoryGirl.define do
  factory :post do |post|
    post.title {"Title of post #{rand(1000).to_s}.."}
    post.subtitle {"Subtitle of post #{rand(1000).to_s}.."}
    post.body {"Body of post #{(0...50).map { ('a'..'z').to_a[rand(26)] }.join} "}
  end
end
