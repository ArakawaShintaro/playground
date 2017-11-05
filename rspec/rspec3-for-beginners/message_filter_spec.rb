require_relative 'message_filter'
require 'rspec/its'
require 'rspec/collection_matchers'

describe MessageFilter do
  # it_behaves_like の引数は十分に説明的で、
  # 先にある shared_examples の中身を見にいかなくても済むことが望ましい
  shared_examples 'MessageFilter with argument "foo"' do
    it { is_expected.to be_detect('hello from foo') }
    # expect(@filter.detect?('hello from foo')).to eq true
    # be_predicticateは?で終わるメソッドを代用できる
    it { is_expected.not_to be_detect('hello, world') }
    # expect(@filter.detect?('hello, world!')).to eq false
    its(:ng_words) { is_expected.not_to be_empty }
  end

  context 'with argument "foo"'  do
    subject { MessageFilter.new('foo') }
    # subjectはテスト対象を引き上げることができる
    it_behaves_like 'MessageFilter with argument "foo"'
    it { is_expected.to have(1).ng_words }
  end

  context 'with argument "foo", "bar"' do
    subject { MessageFilter.new('foo', 'bar') }
    it { is_expected.to be_detect('hello from bar') }
    it_behaves_like 'MessageFilter with argument "foo"'
    it { is_expected.to have(2).ng_words }
  end

end
