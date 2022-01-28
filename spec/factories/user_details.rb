FactoryBot.define do
  factory :user_detail do
    birthday { 30.days.ago}
    phone_number{Faker::PhoneNumber.cell_phone}
    user
  end
end
