module TaskStateMachine
  extend ActiveSupport::Concern

  included do
    state_machine :state, initial: :new_task do
      state :new_task
      state :in_development
      state :archived
      state :in_qa
      state :in_code_review
      state :ready_for_release
      state :released
      state :archived

      event :development do
        transition new_task: :in_development
      end

      event :archive do
        transition [:new_task, :released] => :archived
      end

      event :test do
        transition in_development: :in_qa
      end

      event :test_return do
        transition in_qa: :in_development
      end

      event :review do
        transition in_qa: :in_code_review
      end

      event :review_return do
        transition in_code_review: :in_development
      end

      event :ready do
        transition in_code_review: :ready_for_release
      end

      event :release do
        transition ready_for_release: :released
      end
    end
  end
end
