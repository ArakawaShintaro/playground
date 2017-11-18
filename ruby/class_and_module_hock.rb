#moduleのフック
module IncludedCount
  class << self
    def included(klass) #includeされた時に呼ばれる
      @included ||= []
      @included << klass
    end

    def included_module_and_class
      @included
    end

    def included_count
      @included ? @included.count : 0
    end
  end
end

p IncludedCount.included_count

class IncludeClass1
  include IncludedCount
end

class IncludeClass2
  include IncludedCount
end

class IncludeClass3
  include IncludedCount
end

p IncludedCount.included_count
p IncludedCount.included_module_and_class

#クラス継承のフック

class SuperClass
  class << self
    def inherited(subclass)
      @classes ||= []
      @classes << subclass
    end

    def subclasses
      @classes
    end
  end
end

p SuperClass.subclasses
class Sub1 < SuperClass; end
class Sub2 < SuperClass; end
class Sub3 < SuperClass; end

p SuperClass.subclasses
