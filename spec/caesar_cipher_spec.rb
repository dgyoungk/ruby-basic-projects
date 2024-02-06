# spec/caesar_cipher_spec.rb

require './caesar-cipher/c_cipher'

describe CaesarCipher do
  subject { described_class.new }

  describe '#cipherize' do
    it "outputs the ciphered text" do
      expect(subject.cipherize("Testing", 10)).to eql("Docdsxq")
    end
  end

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
end
