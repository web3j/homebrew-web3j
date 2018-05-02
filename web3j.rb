
class Web3j < Formula
  desc "web3j command line tools for Ethereum"
  homepage "https://github.com/web3j/web3j"
  url "https://github.com/web3j/web3j/releases/download/v3.4.0/web3j-3.4.0.zip"
  # update with: shasum -a 256
  sha256 "3b6e9402c320f9ec80e6cc448ee9f63db9ed5df4"

  depends_on :java => "1.7+"

  def install
    prefix.install "lib"
    bin.install "bin/web3j"
  end

  test do
    system "#{bin}/web3j" "version"
  end
end
