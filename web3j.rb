
class Web3j < Formula
  desc "web3j command line tools for Ethereum"
  homepage "https://github.com/web3j/web3j"
  url "https://github.com/web3j/web3j/releases/download/v3.6.0/web3j-3.6.0.zip"
  # update with: shasum -a 256
  sha256 "9ad5703a4e0ae7f99ee19e47c26850e7965b24536d4e657f3c769ab6b2d05034"

  depends_on :java => "1.7+"

  def install
    prefix.install "lib"
    bin.install "bin/web3j"
  end

  test do
    system "#{bin}/web3j" "version"
  end
end
