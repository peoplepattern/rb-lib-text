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

  it 'keeps hearts intact' do
    sentence = "My first open source PR! <3 #itwasfun"
    tokens = RbLibText.tokens(sentence)
    expect(tokens).to eq(["My", "first", "open", "source", "PR", "!", "<3", "#itwasfun"])
    expect(tokens.count).to eq(8)
  end

  it 'recognizes smiley faces' do
    sentence = ":)\n;)\n=)\n:'-(\n>:3\n:D\n:P\n8)\n:-*\n:-/\n:O\n:p\n:("
    tokens = RbLibText.tokens(sentence)
    expect(tokens).to eq([":)", ";)", "=)", ":'-(", ">:3", ":D", ":P", "8)", ":-*", ":-/", ":O", ":p", ":("])
    expect(tokens.count).to eq(13)
  end

end
