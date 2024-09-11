FactoryBot.define do
  factory :user do
    name { "My Name" }
    email { "sample@sample.com" }
    password { "blank_password" }
    role { "member" }
  end
end
