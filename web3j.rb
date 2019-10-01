
class Web3j < Formula
  desc "web3j command line tools for Ethereum"
  homepage "https://github.com/web3j/web3j"
  url "https://github.com/web3j/web3j-cli/releases/download/v4.5.5/web3j-4.5.5.zip"
  # update with: shasum -a 256
  sha256 "8e8e79931bfce545085096170db71fbf7126cd527a1e05e208f67230437a463d"

  depends_on :java => "1.7+"

  def install
    prefix.install "lib"
    bin.install "bin/web3j"
  end

  test do
    system "#{bin}/web3j" "version"
  end
end
