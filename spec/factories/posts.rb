FactoryBot.define do
  factory :post do
    user { nil }
    content { "MyString" }
    content_type { "MyString" }
    tag { "MyString" }
    solved { false }
    image { "MyString" }
  end
end
