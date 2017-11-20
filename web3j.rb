
class Web3j < Formula
  desc "web3j command line tools for Ethereum"
  homepage "https://github.com/web3j/web3j"
  url "https://github.com/web3j/web3j/releases/download/v3.1.0/web3j-3.1.1.zip"
  # update with: shasum -a 256
  sha256 "bf6b1ae9e6f9cfbcfadad036a2524dace053bd956cfbb9a54cb9dc5a96a90877"

  depends_on :java => "1.7+"

  def install
    prefix.install "lib"
    bin.install "bin/web3j"
  end

  test do
    system "#{bin}/web3j" "version"
  end
end
