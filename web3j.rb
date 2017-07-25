
class Web3j < Formula
  desc "web3j command line tools for Ethereum"
  homepage "https://github.com/web3j/web3j"
  url "https://github.com/web3j/web3j/releases/download/v2.3.0/web3j-2.3.0.zip"
  # update with: shasum -a 256
  sha256 "5475f8033ccc2a45f5208b34f5da8692106eefde6e036e9373b79ff6d1d26918"

  depends_on :java => "1.7+"

  def install
    prefix.install "lib"
    bin.install "bin/web3j"
  end

  test do
    system "#{bin}/web3j" "version"
  end
end
