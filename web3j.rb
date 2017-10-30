
class Web3j < Formula
  desc "web3j command line tools for Ethereum"
  homepage "https://github.com/web3j/web3j"
  url "https://github.com/web3j/web3j/releases/download/v3.0.1/web3j-3.0.1.zip"
  # update with: shasum -a 256
  sha256 "2a12f4cbab2c00f19964b27b06000964b8b2f4ce2984279cbe760173fce3e0d4"

  depends_on :java => "1.7+"

  def install
    prefix.install "lib"
    bin.install "bin/web3j"
  end

  test do
    system "#{bin}/web3j" "version"
  end
end
