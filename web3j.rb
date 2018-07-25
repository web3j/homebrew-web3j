
class Web3j < Formula
  desc "web3j command line tools for Ethereum"
  homepage "https://github.com/web3j/web3j"
  url "https://github.com/web3j/web3j/releases/download/v3.5.0/web3j-3.5.0.zip"
  # update with: shasum -a 256
  sha256 "4dc7d97b58d0e55938900cda3bc7cb1e2be8debee9d69ab6285d3153753cdd31"

  depends_on :java => "1.7+"

  def install
    prefix.install "lib"
    bin.install "bin/web3j"
  end

  test do
    system "#{bin}/web3j" "version"
  end
end
