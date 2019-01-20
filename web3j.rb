
class Web3j < Formula
  desc "web3j command line tools for Ethereum"
  homepage "https://github.com/web3j/web3j"
  url "https://github.com/web3j/web3j/releases/download/v4.1.1/web3j-4.1.1.zip"
  # update with: shasum -a 256
  sha256 "9e0e0c9d09ff6a606768698ceb6ce96454ab3c2a2f2cb2ab8e95f06515df5fb7"

  depends_on :java => "1.7+"

  def install
    prefix.install "lib"
    bin.install "bin/web3j"
  end

  test do
    system "#{bin}/web3j" "version"
  end
end
