
class Web3j < Formula
  desc "web3j command line tools for Ethereum"
  homepage "https://github.com/web3j/web3j"
  url "https://github.com/web3j/web3j/releases/download/v3.2.0/web3j-3.2.0.zip"
  # update with: shasum -a 256
  sha256 "c583aad9706248fc2c532b3283568812077009ca5dbbf7f9e78505c75180e57c"

  depends_on :java => "1.7+"

  def install
    prefix.install "lib"
    bin.install "bin/web3j"
  end

  test do
    system "#{bin}/web3j" "version"
  end
end
