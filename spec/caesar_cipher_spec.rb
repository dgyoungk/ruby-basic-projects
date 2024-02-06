# spec/caesar_cipher_spec.rb

require './caesar-cipher/c_cipher'

describe CaesarCipher do
  subject { described_class.new }

  context 'when converting' do
    context 'from letters to numers' do
      it 'should have no alphabet characters' do
        expect(subject.convert_to_nums("Testing")).not_to include(/[A-Za-z]/)
      end
    end
    context 'from numbers to letters' do
      it 'should not contain any numbers' do
        expect(subject.convert_to_code(subject.convert_to_nums("Testing"))).not_to match(/\d/)
      end
    end
  end

  describe '#cipherize' do
    context 'when given a shift value' do
      it "ciphers the text according to the shift value" do
        expect(subject.cipherize("Testing", 10)).to eql("Docdsxq")
      end
    end
    context 'when not given a shit value' do
      it 'ciphers the text based on a shift value of 5' do
        expect(subject.cipherize("Testing")).to eql('Yjxynsl')
      end
    end
    context 'when the string has whitespace and punctuation' do
      it 'ciphers only the letters' do
        expect(subject.cipherize("Testing with spaces!!!", 10)).to eql("Docdsxq gsdr czkmoc!!!")
      end
    end
  end
end
