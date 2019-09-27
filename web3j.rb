
class Web3j < Formula
  desc "web3j command line tools for Ethereum"
  homepage "https://github.com/web3j/web3j"
  url "https://github.com/web3j/web3j-cli/releases/download/v4.5.5/web3j-4.5.5.zip"
  # update with: shasum -a 256
  sha256 "ba2ca479e9f1b0aec286dc3f0cb2271c0b4fe8c8f72b2cfad5cb2ba97d48ecc6"

  depends_on :java => "1.7+"

  def install
    prefix.install "lib"
    bin.install "bin/web3j"
  end

  test do
    system "#{bin}/web3j" "version"
  end
end
