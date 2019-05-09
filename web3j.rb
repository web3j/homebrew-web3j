
class Web3j < Formula
  desc "web3j command line tools for Ethereum"
  homepage "https://github.com/web3j/web3j"
  url "https://github.com/web3j/web3j/releases/download/4.3.0/web3j-4.3.0.zip"
  # update with: shasum -a 256
  sha256 "efafd06712655ffd2c65fb7c6907394556eb4d0ce81e2afc516cecee7639dc9d"

  depends_on :java => "1.7+"

  def install
    prefix.install "lib"
    bin.install "bin/web3j"
  end

  test do
    system "#{bin}/web3j" "version"
  end
end
