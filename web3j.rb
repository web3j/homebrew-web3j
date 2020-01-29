
class Web3j < Formula
  desc "web3j command line tools for Ethereum"
  homepage "https://github.com/web3j/web3j"
  url "https://github.com/web3j/web3j-cli/releases/download/v4.5.13/web3j-4.5.13.zip"
  # update with: shasum -a 256
  sha256 "b8411daa39b5440fe6f76e33ee11adf6efc698ca67ab25539355c8900273b03e"

  depends_on :java => "1.7+"

  def install
    prefix.install "lib"
    bin.install "bin/web3j"
  end

  test do
    system "#{bin}/web3j" "version"
  end
end
