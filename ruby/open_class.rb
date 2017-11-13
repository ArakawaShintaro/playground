# Stringというクラス名だけでもいける
class QuotableString < String
  def quote
    p self
    "#{self}"
  end
end

qs = QuotableString.new 'Ruby'
p qs.quote

class Numeric
  def steps
    return [] if self <= 0
    0.upto(self).to_a
  end
end

p 10.steps
p -1.steps
