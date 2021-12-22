class Letter < ApplicationRecord
<<<<<<< HEAD
  # 與rich_text的關聯
  has_rich_text :content
=======
  belongs_to :user
>>>>>>> 69607a4 (feat:add fake email)
end
