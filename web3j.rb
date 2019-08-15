
class Web3j < Formula
  desc "web3j command line tools for Ethereum"
  homepage "https://github.com/web3j/web3j"
  url "https://github.com/web3j/web3j/releases/download/v4.4.0/web3j-4.4.0.zip"
  # update with: shasum -a 256
  sha256 "324b114f01ee06e92657934f313ad1762f18f0b5ceec5007156cb56e80065360"

  depends_on :java => "1.7+"

  def install
    prefix.install "lib"
    bin.install "bin/web3j"
  end

  test do
    system "#{bin}/web3j" "version"
  end
end
