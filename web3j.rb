
class Web3j < Formula
  desc "web3j command line tools for Ethereum"
  homepage "https://github.com/web3j/web3j"
  url "https://github.com/web3j/web3j/releases/download/v2.0.1/web3j-2.0.1.zip"
  sha256 "dd6bdc9bcb4fe698a06120208ca6b88838b6735eab70bc163b1994b964048eac"

  depends_on :java => "1.7+"

  def install
    prefix.install "lib"
    bin.install "bin/web3j"
  end

  test do
    system "#{bin}/web3j" "version"
  end
end
