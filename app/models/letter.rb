class Letter < ApplicationRecord
  # 與rich_text的關聯
  has_rich_text :content
end
