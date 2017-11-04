require_relative 'message_filter'

describe MessageFilter, 'with argument "foo"'  do
  before do
    @filter = MessageFilter.new('foo')
  end
  it {
    # expect(@filter.detect?('hello from foo')).to eq true
    expect(@filter).to be_detect('hello from foo')
  }

  it {
    # expect(@filter.detect?('hello, world!')).to eq false
    expect(@filter).not_to be_detect('hello, world')
  }
end
