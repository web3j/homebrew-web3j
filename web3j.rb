
class Web3j < Formula
  desc "web3j command line tools for Ethereum"
  homepage "https://github.com/web3j/web3j"
  url "https://github.com/web3j/web3j/releases/download/v4.5.0/web3j-4.5.0.zip"
  # update with: shasum -a 256
  sha256 "3db3b55871ea03fd587f09765f6f4391e6c4efbdc3e627308feca8632e15e136"

  depends_on :java => "1.7+"

  def install
    prefix.install "lib"
    bin.install "bin/web3j"
  end

  test do
    system "#{bin}/web3j" "version"
  end
end
