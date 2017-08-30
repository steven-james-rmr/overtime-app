FactoryGirl.define do
  sequence :email do |n|
    "test#{n}@example.com"
  end

  factory :user, class: "User" do
    first_name 'Jon'
    last_name 'Snow'
    email "test@test.com"
    password "asdfasdf"
    password_confirmation "asdfasdf"
  end

  factory :admin_user, class: "AdminUser" do
    first_name 'Admin'
    last_name 'User'
    email "admin@user.com"
    password "asdfasdf"
    password_confirmation "asdfasdf"
  end

  factory :non_authorized_user, class: "NonUser" do
    first_name 'Non'
    last_name 'User'
    email "non@user.com"
    password "asdfasdf"
    password_confirmation "asdfasdf"
  end
end
