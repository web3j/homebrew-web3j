
class Web3j < Formula
  desc "web3j command line tools for Ethereum"
  homepage "https://github.com/web3j/web3j"
  url "https://github.com/web3j/web3j/releases/download/v2.2.1/web3j-2.2.1.zip"
  # update with: shasum -a 256
  sha256 "60012a985b54a4ff10e37a742f7a7eb8b5157e4c1f71bd292fc0c27b3d9363aa"

  depends_on :java => "1.7+"

  def install
    prefix.install "lib"
    bin.install "bin/web3j"
  end

  test do
    system "#{bin}/web3j" "version"
  end
end
