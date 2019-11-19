
class Web3j < Formula
  desc "web3j command line tools for Ethereum"
  homepage "https://github.com/web3j/web3j"
  url "https://github.com/web3j/web3j-cli/releases/download/v4.5.7/web3j-4.5.7.zip"
  # update with: shasum -a 256
  sha256 "b6b8f23718b359577c481b7d5ca2a74b397d0a77180a9bbc6bbd4918a089f50e"

  depends_on :java => "1.7+"

  def install
    prefix.install "lib"
    bin.install "bin/web3j"
  end

  test do
    system "#{bin}/web3j" "version"
  end
end
