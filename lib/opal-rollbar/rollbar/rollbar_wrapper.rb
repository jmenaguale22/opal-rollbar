class RollbarWrapper
  include Native

  def initialize(native)
    @native = native
  end

  def to_n
    @native
  end
end
