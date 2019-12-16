
class Web3j < Formula
  desc "web3j command line tools for Ethereum"
  homepage "https://github.com/web3j/web3j"
  url "https://github.com/web3j/web3j-cli/releases/download/v4.5.11/web3j-4.5.11.zip"
  # update with: shasum -a 256
  sha256 "02172cd4f1548a6c4ef75fbe58078b08616f85e55d0219bc724671c35daf0b24"

  depends_on :java => "1.7+"

  def install
    prefix.install "lib"
    bin.install "bin/web3j"
  end

  test do
    system "#{bin}/web3j" "version"
  end
end
