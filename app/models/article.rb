class Article < ApplicationRecord
  normalizes :title, with: norm { upcase >> add_click_bait >> exclaim_it! }
  normalizes :author, with: norm { snake_case >> upcase }
end
