
class Web3j < Formula
  desc "web3j command line tools for Ethereum"
  homepage "https://github.com/web3j/web3j"
  url "https://github.com/web3j/web3j/releases/download/v4.5.5/web3j-4.5.5.zip"
  # update with: shasum -a 256
  sha256 "4965a4ca18a33a9987a25e167f7ecf0957b3fbeef16ff9c69fd2a5f37691992f"

  depends_on :java => "1.7+"

  def install
    prefix.install "lib"
    bin.install "bin/web3j"
  end

  test do
    system "#{bin}/web3j" "version"
  end
end
