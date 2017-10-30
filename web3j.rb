
class Web3j < Formula
  desc "web3j command line tools for Ethereum"
  homepage "https://github.com/web3j/web3j"
  url "https://github.com/web3j/web3j/releases/download/v3.0.0/web3j-3.0.0.zip"
  # update with: shasum -a 256
  sha256 "05830404e074916fdbd98bcf115c045f9eb2ee6a45afbe5d5e84a71de01e8261"

  depends_on :java => "1.7+"

  def install
    prefix.install "lib"
    bin.install "bin/web3j"
  end

  test do
    system "#{bin}/web3j" "version"
  end
end
