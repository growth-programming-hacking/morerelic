FactoryGirl.define do
  factory :identity do
    provider 'github'
    sequence(:uid) { |e| e }
  end
end
