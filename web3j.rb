
class Web3j < Formula
  desc "web3j command line tools for Ethereum"
  homepage "https://github.com/web3j/web3j"
  url "https://github.com/web3j/web3j-cli/releases/download/v4.5.5/web3j-4.5.5.zip"
  # update with: shasum -a 256
  sha256 "5f7ee5aed456c9620d2c9855f73a4c7037f2e42c60592e85d74d9b2bfab5bf58"

  depends_on :java => "1.7+"

  def install
    prefix.install "lib"
    bin.install "bin/web3j"
  end

  test do
    system "#{bin}/web3j" "version"
  end
end
