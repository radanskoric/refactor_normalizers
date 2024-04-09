class Article < ApplicationRecord
  CLICK_BAIT = [
    "Shocking:",
    "You won't believe it but",
    "Big software doesn't want you to know this!",
    "This trick will make you rich!"
  ]

  normalizes :title, with: ->(t) do
    "#{CLICK_BAIT.sample} #{t.upcase}!!!"
  end

  normalizes :author, with: ->(a) { a.upcase.gsub(" ", "_") }
end
