
class Web3j < Formula
  desc "web3j command line tools for Ethereum"
  homepage "https://github.com/web3j/web3j"
  url "https://github.com/web3j/web3j-cli/releases/download/v4.5.7/web3j-4.5.7.zip"
  # update with: shasum -a 256
  sha256 "6f4e3288fc2314b3e302eaea1242ba4610e96da0092941be1fe3aec614f9bc61"

  depends_on :java => "1.7+"

  def install
    prefix.install "lib"
    bin.install "bin/web3j"
  end

  test do
    system "#{bin}/web3j" "version"
  end
end
