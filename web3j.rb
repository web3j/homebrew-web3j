
class Web3j < Formula
  desc "web3j command line tools for Ethereum"
  homepage "https://github.com/web3j/web3j"
  url "https://github.com/web3j/web3j/releases/download/v4.5.1/web3j-4.5.1.zip"
  # update with: shasum -a 256
  sha256 "98372b0509ba0758e8a454b27dcef19c5dc7f0d4545aab5d1d6970f2411f67be"

  depends_on :java => "1.7+"

  def install
    prefix.install "lib"
    bin.install "bin/web3j"
  end

  test do
    system "#{bin}/web3j" "version"
  end
end
