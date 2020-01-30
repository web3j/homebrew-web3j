
class Web3j < Formula
  desc "web3j command line tools for Ethereum"
  homepage "https://github.com/web3j/web3j"
  url "https://github.com/web3j/web3j-cli/releases/download/v4.5.14/web3j-4.5.14.zip"
  # update with: shasum -a 256
  sha256 "a5af8a52283dd8799a39468779a553461279372ce512b598f96927f48de46d69"

  depends_on :java => "1.7+"

  def install
    prefix.install "lib"
    bin.install "bin/web3j"
  end

  test do
    system "#{bin}/web3j" "version"
  end
end
