FactoryBot.define do
  sequence :string, aliases: [:first_name, :last_name, :password] do |n|
    "string#{n}"
  end

  sequence :user_email, aliases: [:email] do |n|
    "user#{n}@example.com"
  end
end
