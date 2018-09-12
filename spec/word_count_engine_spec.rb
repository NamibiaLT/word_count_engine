require 'word_count_engine'
require 'rspec'

RSpec.describe 'WordCountEngine' do
  let(:document) { "Practice makes perfect. you'll only
                    get Perfect by practice. just practice!" }
  let(:document_output) { [ ["practice", "3"], ["perfect", "2"],
          ["makes", "1"], ["youll", "1"], ["only", "1"],
          ["get", "1"], ["by", "1"], ["just", "1"] ] }

  describe 'word_counter' do
    it 'outputs the wordcount of the document' do
      expect(WordCountEngine.word_counter(document)).to eq(document_output)
    end
  end
end
