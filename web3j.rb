
class Web3j < Formula
  desc "web3j command line tools for Ethereum"
  homepage "https://github.com/web3j/web3j"
  url "https://github.com/web3j/web3j/releases/download/v3.1.0/web3j-3.1.0.zip"
  # update with: shasum -a 256
  sha256 "e141a3a0945b69788dcee08346b21654409709d05b9c124fbfdd82c1b915eff2"

  depends_on :java => "1.7+"

  def install
    prefix.install "lib"
    bin.install "bin/web3j"
  end

  test do
    system "#{bin}/web3j" "version"
  end
end
