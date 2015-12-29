require "rb_lib_text/version"

module RbLibText
  require 'set'
    def self.or_pattern
      patterns = {
        html_chars: '&\w+;',  # separates the junk that comes from > and < and &
        numbers_commas: '[\-\$]?\d{1,3}(?:,\d{3})+', # like 2,000,000
        times: '\d?\d:\d{2}',  # like 2:12
        money: '-?\$?\d+[.]\d+%?', #Catch money numerics
        acronyms: '(?:\w{1}\.{1})+',  # like U.T.
        possessive_mentions: '@\w+', #splits possessive off of @jimbob's
        possessive_hashtags: '#\w+', #splits possessive off of #tcot's
        tags_contractions: '[\w]+[\'‘’][\w]+', #don't split don't and can't and it's
        emails: '[\w\.\d]+@[\w\.\d]+\.[\w]+', #catch email addresses
        urls: 'https?://[-_/~%\w\d\.]*[_/~\w\d]', #Catch url addresses
        #sideways_text_emoji: '>?[:;=][\'\-D\)\]\(\[pPdoO/\*3\\]+',
        ellipses: '\.{3}',
        en_em_dash: '-{2,3}', #Catch en and em dashes
        slashes: '[\w]+(?:[/\-][\w]+)+', #Grammatical / -
        punct: '[\"“”‘’\'\\.\\?!…,:;»«\(\)]', #punctuation to split on
        tags_mentions: '[\w#@\d%$\u00B0]+', #Group all of these things together
        emoji_block0: '[\U00002600-\U000027BF]',
        emoji_block1: '[\U0001f300-\U0001f64F]',
        emoji_block2: '[\U0001f680-\U0001f6FF]',
        hearts: '<+/?3+', # <3
        other_punct: '[\u2014\u2013]', 
        all_other: '[^\s]', #Split any other weird chars that may have been missed
      }
  
      return Regexp.union(patterns.values.map{|value| Regexp.new(value)})
    end
  
    def self.tokens(text)
      text = text.gsub("\u2026", "...")
      text = text.gsub(/\.{2,}/, "...")
      return text.scan(self.or_pattern)
    end
end
