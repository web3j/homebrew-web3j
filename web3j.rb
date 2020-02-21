
class Web3j < Formula
  desc "web3j command line tools for Ethereum"
  homepage "https://github.com/web3j/web3j"
  url "https://github.com/web3j/web3j-cli/releases/download/v4.5.15/web3j-4.5.15.zip"
  # update with: shasum -a 256
  sha256 "70fb02c94cf6ea73be1fe73170b8a060d2ade5489c177f4a80c0692a1dcb047c"

  depends_on :java => "1.7+"

  def install
    prefix.install "lib"
    bin.install "bin/web3j"
  end

  test do
    system "#{bin}/web3j" "version"
  end
end
