
class Web3j < Formula
  desc "web3j command line tools for Ethereum"
  homepage "https://github.com/web3j/web3j"
  url "https://github.com/web3j/web3j-cli/releases/download/v4.5.6/web3j-4.5.6.zip"
  # update with: shasum -a 256
  sha256 "6f366d9c555df6a0b8460b69dfd0a188c82b5328b42a5680fa5d9fb04fbb0f1c"

  depends_on :java => "1.7+"

  def install
    prefix.install "lib"
    bin.install "bin/web3j"
  end

  test do
    system "#{bin}/web3j" "version"
  end
end
