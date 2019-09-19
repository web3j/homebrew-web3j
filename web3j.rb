
class Web3j < Formula
  desc "web3j command line tools for Ethereum"
  homepage "https://github.com/web3j/web3j"
  url "https://github.com/web3j/web3j/releases/download/v4.5.2/web3j-4.5.2.zip"
  # update with: shasum -a 256
  sha256 "f65a84f2e7121bc27e0e5df9fb0b3ebb9e2bbe14fd6269e283ca094316bbc5b7"

  depends_on :java => "1.7+"

  def install
    prefix.install "lib"
    bin.install "bin/web3j"
  end

  test do
    system "#{bin}/web3j" "version"
  end
end
