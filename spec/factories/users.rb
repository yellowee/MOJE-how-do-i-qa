FactoryBot.define do
  factory :user do
    sequence (:email) { |n| "jacek.soplica#{n}@test.example" }
    password { 'password' }
  end
end
