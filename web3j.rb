
class Web3j < Formula
  desc "web3j command line tools for Ethereum"
  homepage "https://github.com/web3j/web3j"
  url "https://github.com/web3j/web3j/releases/download/v4.4.1/web3j-4.4.1.zip"
  # update with: shasum -a 256
  sha256 "57cbc70923bcb75aed7aa5c7a16420f604764a0e2704a725cb77561a8d9dc446"

  depends_on :java => "1.7+"

  def install
    prefix.install "lib"
    bin.install "bin/web3j"
  end

  test do
    system "#{bin}/web3j" "version"
  end
end
