module UserService
  class << self
    def normalize_email(email)
      return nil if email.nil?

      email.mb_chars.downcase
    end
  end
end
