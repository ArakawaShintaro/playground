require 'set'

#set（集合を表す）、Enumerableをincludeしている
p (1..5).to_set
p Set.new(%w(arakawa shintaro))
p set = Set[1,2,3]
set.add(4)
p set
p set.add(4)
