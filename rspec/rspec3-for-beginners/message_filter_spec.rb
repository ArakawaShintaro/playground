require_relative 'message_filter'

# it_behaves_like の引数は十分に説明的で、
# 先にある shared_examples の中身を見にいかなくても済むことが望ましい
shared_examples 'MessageFilter with argument "foo"' do
  it { is_expected.to be_detect('hello from foo') }
  # expect(@filter.detect?('hello from foo')).to eq true
  it { is_expected.not_to be_detect('hello, world') }
  # expect(@filter.detect?('hello, world!')).to eq false
end

describe MessageFilter, 'with argument "foo"'  do
  subject { MessageFilter.new('foo') }
  it_behaves_like 'MessageFilter with argument "foo"'
end

describe MessageFilter, 'with argument "foo", "bar"' do
  subject { MessageFilter.new('foo', 'bar') }
  it { is_expected.to be_detect('hello from bar') }
  it_behaves_like 'MessageFilter with argument "foo"'
end
