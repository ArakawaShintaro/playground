require 'benchmark'
require 'irb'

n = 1_000_000

Benchmark.bm(7, '=>total:') do |x|
  f = x.report("for:") { for i in 1..n; val = 'value' end }
  w = x.report("while:") { i = 1; while i <= n; val = 'value'; i += 1 end }
  t = x.report("times:") { n.times do val = 'value' end }

  binding.irb

  total = f + w + t
  [total]
end
