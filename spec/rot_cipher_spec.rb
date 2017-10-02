require 'rot_cipher'

describe StringCipher do
  describe ".cipher" do

    context "rotating when key 0 is given" do
      it "returns the same string" do
        expect(StringCipher.cipher("Cool", 0)).to eql("Cool")
      end
    end

    context "rotating when key 26 is given" do
      it "returns the same string" do
        expect(StringCipher.cipher("trl", 26)).to eql("trl")
      end
    end

    context "rotating when key 13 is given" do
      it "returns rotated string by 13" do
        expect(StringCipher.cipher("dhvpx", 13)).to eql("quick")
      end
    end

    context "rotating when key 5 is given" do
      it "returns rotated string by 5" do
        expect(StringCipher.cipher("omg", 5)).to eql("trl")
      end
    end

    context "rotating punctuation" do
      it "returns the same punctuation" do
        expect(StringCipher.cipher("hello, world", 1)).to eql("ifmmp, xpsme")
      end
    end

    context "rotating spaces" do
      it "returns spaces" do
        expect(StringCipher.cipher("O M G", 5)).to eql("T R L")
      end
    end

    context "rotating numbers" do
      it "returns the same number" do
        expect(StringCipher.cipher("20", 4)).to eql("20")
      end
    end

    context "rotating capital letters" do
      it "returns rotated capital letter" do
        expect(StringCipher.cipher("OMG", 5)).to eql("TRL")
      end
    end

  end
end
