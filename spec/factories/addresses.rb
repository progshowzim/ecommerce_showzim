FactoryBot.define do
  factory :address do
    name { "MyString" }
    street { "MyString" }
    neighborhood { "MyString" }
    number { "MyString" }
    zipcode { "MyString" }
    city { "MyString" }
    state { "MyString" }
    main { false }
    user { nil }
  end
end
