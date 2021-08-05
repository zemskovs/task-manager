FactoryBot.define do
  factory :task do
    name
    description
    author factory: :manager
    assignee_id factory: :developer
    state { 'new_task' }
    expired_at { '2021-07-03' }
  end
end
