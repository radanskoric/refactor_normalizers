class Norm
  CLICK_BAIT = [
    "Shocking:",
    "You won't believe it but",
    "Big software doesn't want you to know this!",
    "This trick will make you rich!"
  ]

  def upcase
    :upcase.to_proc
  end

  def snake_case
    ->(s) { s.gsub(/\s+/, '_') }
  end

  def exclaim_it!
    ->(s) { "#{s}!!!" }
  end

  def add_click_bait
    ->(s) { "#{CLICK_BAIT.sample} #{s}" }
  end
end
