FactoryBot.define do
  factory :user do
    password = Faker::Number.number(digits: 10)
    email { Faker::Internet.email }
    password { password }
    password_confirmation { password }
    name { Faker::Name.name }
    phone { Faker::PhoneNumber.cell_phone }
  end
end
