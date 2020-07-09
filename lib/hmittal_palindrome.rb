require "hmittal_palindrome/version"

module HmittalPalindrome
  class Error < StandardError; end

  # Returns true for a palindrome, false otherwise.
  def palindrome?
    if(processed_content.empty?)
      return false
    end
    processed_content == processed_content.reverse
  end

  private

    # Returns content for palindrome testing.
    def processed_content
      to_s.scan(/[a-z0-9]/i).join.downcase
    end
end

class String
  include HmittalPalindrome
end

class Integer
  include HmittalPalindrome
end