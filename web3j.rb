
class Web3j < Formula
  desc "web3j command line tools for Ethereum"
  homepage "https://github.com/web3j/web3j"
  url "https://github.com/web3j/web3j/releases/download/v1.1.2/web3j-1.1.2.zip"
  sha256 "41a3c14283b9dc9f566d67d133afca1156d427598e84003cadabeb15b3c51ff7"

  depends_on :java => "1.7+"

  def install
    prefix.install "lib"
    bin.install "bin/web3j"
  end

  test do
    # system "#{bin}/web3j"
    system "true"
  end
end
