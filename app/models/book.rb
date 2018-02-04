class Book < ApplicationRecord

  before_validation :normalize_title

  private

  def normalize_title
    self.title = self.title.titleize
  end

end
