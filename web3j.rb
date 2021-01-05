
class Web3j < Formula
  desc "web3j command line tools for Ethereum"
  homepage "https://github.com/web3j/web3j"
  url "https://github.com/web3j/web3j-cli/releases/download/v4.5.16/web3j-4.5.16.zip"
  # update with: shasum -a 256
  sha256 "8b635d0b0c1d0623b0a42711418dbd6601b53221143f84d6eb264c2713ffd5d7"

  depends_on :openjdk => "1.7+"

  def install
    prefix.install "lib"
    bin.install "bin/web3j"
  end

  test do
    system "#{bin}/web3j" "version"
  end
end
