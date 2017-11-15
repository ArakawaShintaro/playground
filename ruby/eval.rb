class EvalTarget
  attr_reader :instance_val

  private

  def private_method
    @instance_val = 100
  end
end

e = EvalTarget.new
e.instance_eval do
  p private_method
end
