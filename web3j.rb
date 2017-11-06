
class Web3j < Formula
  desc "web3j command line tools for Ethereum"
  homepage "https://github.com/web3j/web3j"
  url "https://github.com/web3j/web3j/releases/download/v3.0.2/web3j-3.0.2.zip"
  # update with: shasum -a 256
  sha256 "e9cb5898cafc512f5bd1c64938a50645b354e983d2632aac835bc9fc14f1eead"

  depends_on :java => "1.7+"

  def install
    prefix.install "lib"
    bin.install "bin/web3j"
  end

  test do
    system "#{bin}/web3j" "version"
  end
end
