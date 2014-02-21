class Smurl < ActiveRecord::Base
  validates :l_url, presence: true
  validates_format_of :l_url, with: URI::regexp(%w(http https)),
  message: "URL must begin with http or https"
  after_create :init, :generate_short

  def clicked
    self.click_count += 1
    self.save
  end

  private

  def init
    self.click_count = 0
  end

  def generate_short
    self.update(s_url: "#{self.hash.abs.to_s(36)}")
  end
end
