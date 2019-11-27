
class Web3j < Formula
  desc "web3j command line tools for Ethereum"
  homepage "https://github.com/web3j/web3j"
  url "https://github.com/web3j/web3j-cli/releases/download/v4.5.8/web3j-4.5.8.zip"
  # update with: shasum -a 256
  sha256 "343b4e7fb9453294289335890563a66e72067a182c06fa3ae8b3faa055808547"

  depends_on :java => "1.7+"

  def install
    prefix.install "lib"
    bin.install "bin/web3j"
  end

  test do
    system "#{bin}/web3j" "version"
  end
end
