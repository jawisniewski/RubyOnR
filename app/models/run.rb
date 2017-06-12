class Run < ApplicationRecord
  belongs_to :car , required: false
  validates :name, presence: true
  def self.search(search)
    if search
      if search != ""
      where(:Name =>   "#{search}")
      else
        all
      end

    else

      all
    end
  end

end
