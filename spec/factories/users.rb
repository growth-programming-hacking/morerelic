FactoryGirl.define do
  sequence(:name) { FFaker::Name.name }

  factory :user do
    email { FFaker::Internet.email }
    password "12345678"

    factory :omniauth_user do
      transient do
        uid '123456'
        provider 'github'
      end

      after(:create) do |user, evaluator|
        user.identities << create(
           :identity,
           uid: evaluator.uid,
           provider: evaluator.provider
        )
      end
    end
  end
end
