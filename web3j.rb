
class Web3j < Formula
  desc "web3j command line tools for Ethereum"
  homepage "https://github.com/web3j/web3j"
  url "https://github.com/web3j/web3j/releases/download/v3.3.1/web3j-3.3.1.zip"
  # update with: shasum -a 256
  sha256 "a0f815e8dd468bf8ef504165390600572f6666ebbb182c970b4985fd50582a6b"

  depends_on :java => "1.7+"

  def install
    prefix.install "lib"
    bin.install "bin/web3j"
  end

  test do
    system "#{bin}/web3j" "version"
  end
end
