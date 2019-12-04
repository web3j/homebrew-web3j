
class Web3j < Formula
  desc "web3j command line tools for Ethereum"
  homepage "https://github.com/web3j/web3j"
  url "https://github.com/web3j/web3j-cli/releases/download/v4.5.9/web3j-4.5.9.zip"
  # update with: shasum -a 256
  sha256 "e1b8cad9998a80aeb2da55f747c51bcf7e5dcceb166c541d2bc29a1655d9463f"

  depends_on :java => "1.7+"

  def install
    prefix.install "lib"
    bin.install "bin/web3j"
  end

  test do
    system "#{bin}/web3j" "version"
  end
end
