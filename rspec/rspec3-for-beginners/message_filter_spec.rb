require_relative 'message_filter'

describe MessageFilter, 'with argument "foo"'  do
  subject { MessageFilter.new('foo') }
  it {
    # expect(@filter.detect?('hello from foo')).to eq true
    is_expected.to be_detect('hello from foo')
  }

  it {
    # expect(@filter.detect?('hello, world!')).to eq false
    is_expected.not_to be_detect('hello, world')
  }
end
