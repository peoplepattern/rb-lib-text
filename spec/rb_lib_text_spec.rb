require 'spec_helper'

describe RbLibText do
  it 'has a version number' do
    expect(RbLibText::VERSION).not_to be nil
  end

  it 'does something useful' do
    sentance = "RT @RGA: The most horrifying Halloween costume of all. (via @atmasphere) http://t.co/YzcTzh5BtE"
    tokens = RbLibText.tokens(sentance)
    expect(tokens.count).to eq(16)
  end
end
