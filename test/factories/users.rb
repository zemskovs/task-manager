FactoryBot.define do
  factory :user do
    first_name
    last_name
    password
    email { 'MyString@mail.ru' }
    avatar { 'MyString' }
    type { '' }

    factory :developer do
      type { 'Developer' }
      email { 'MyString1@mail.ru' }
    end

    factory :manager do
      type { 'Manager' }
      email { 'MyString2@mail.ru' }
    end

    factory :admin do
      type { 'Admin' }
      email { 'MyString3@mail.ru' }
    end
  end
end
