require 'rot_cipher'

describe StringCipher do

  describe "#cipher" do

    context "rotating when key 0 is given" do
      it "returns the same string" do
        stringCipher = StringCipher.new(0)
        expect(stringCipher.cipher("Cool")).to eql("Cool")
      end
    end

    context "rotating when key 26 is given" do
      it "returns the same string" do
        stringCipher = StringCipher.new(26)
        expect(stringCipher.cipher("trl")).to eql("trl")
      end
    end

    context "rotating when key 13 is given" do
      it "returns rotated string by 13" do
        stringCipher = StringCipher.new(13)
        expect(stringCipher.cipher("dhvpx")).to eql("quick")
      end
    end

    context "rotating when key 5 is given" do
      it "returns rotated string by 5" do
        stringCipher = StringCipher.new(5)
        expect(stringCipher.cipher("omg")).to eql("trl")
      end
    end

    context "rotating punctuation" do
      it "returns the same punctuation" do
        stringCipher = StringCipher.new(1)
        expect(stringCipher.cipher("hello, world")).to eql("ifmmp, xpsme")
      end
    end

    context "rotating spaces" do
      it "returns spaces" do
        stringCipher = StringCipher.new(5)
        expect(stringCipher.cipher("O M G")).to eql("T R L")
      end
    end

    context "rotating numbers" do
      it "returns the same number" do
        stringCipher = StringCipher.new(4)
        expect(stringCipher.cipher("20")).to eql("20")
      end
    end

    context "rotating capital letters" do
      it "returns rotated capital letter" do
        stringCipher = StringCipher.new(5)
        expect(stringCipher.cipher("OMG")).to eql("TRL")
      end
    end

    context "rotating all letters" do
      it "returns rotated letters" do
        stringCipher = StringCipher.new(13)
        expect(stringCipher.cipher("The quick brown fox jumps over the lazy dog.")).to eql("Gur dhvpx oebja sbk whzcf bire gur ynml qbt.")
      end
    end

  end
end
