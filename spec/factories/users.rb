FactoryGirl.define do 
    factory :user do
        email { Faker::Internet.email}
        password "carvalho11"
        password_confirmation "carvalho11"
    end
end