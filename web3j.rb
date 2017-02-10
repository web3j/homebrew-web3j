
class Web3j < Formula
  desc "web3j command line tools for Ethereum"
  homepage "https://github.com/web3j/web3j"
  url "https://github.com/web3j/web3j/releases/download/v2.0.0/web3j-2.0.0.zip"
  sha256 "f702877f91dfc9cbeccf289a1967c75896b3712a4752f45bd42087dff03c6de5"

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
