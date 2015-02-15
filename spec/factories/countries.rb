FactoryGirl.define do
  factory :country, class: SomeModule::Country do
    name 'Germany'
    code 'DE'
  end

end
