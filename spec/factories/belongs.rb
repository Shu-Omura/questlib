FactoryBot.define do
  factory :belong do
    user { nil }
    team { nil }
    company { nil }
    admin { false }
  end
end
