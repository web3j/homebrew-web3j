
class Web3j < Formula
  desc "web3j command line tools for Ethereum"
  homepage "https://github.com/web3j/web3j"
  url "https://github.com/web3j/web3j/releases/download/v4.2.0/web3j-4.2.0.zip"
  # update with: shasum -a 256
  sha256 "c9d664bc2913680cb25e7be91e79b48b97420902af2e54af5b53dd9a8dbfaf11"

  depends_on :java => "1.7+"

  def install
    prefix.install "lib"
    bin.install "bin/web3j"
  end

  test do
    system "#{bin}/web3j" "version"
  end
end
