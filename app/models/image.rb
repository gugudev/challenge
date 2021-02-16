class Image < ApplicationRecord

  has_one_attached :src

  validate :check_src_presence

  private

  def check_src_presence
    errors.add(:src, "no file added") unless src.attached?
  end

end
