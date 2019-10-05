
class Web3j < Formula
  desc "web3j command line tools for Ethereum"
  homepage "https://github.com/web3j/web3j"
  url "https://github.com/web3j/web3j-cli/releases/download/v4.5.5/web3j-4.5.5.zip"
  # update with: shasum -a 256
  sha256 "476934c1c9fea8d245d100b4e17e71053feb4cea61e48822e9b2ff79a7970799"

  depends_on :java => "1.7+"

  def install
    prefix.install "lib"
    bin.install "bin/web3j"
  end

  test do
    system "#{bin}/web3j" "version"
  end
end
