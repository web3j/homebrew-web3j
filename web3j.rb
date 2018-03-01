
class Web3j < Formula
  desc "web3j command line tools for Ethereum"
  homepage "https://github.com/web3j/web3j"
  url "https://github.com/web3j/web3j/releases/download/v3.3.0/web3j-3.3.0.zip"
  # update with: shasum -a 256
  sha256 "e615e96c9b0d7352bad21f452fa9b56c43311f9b3c58f77f8c704c99b93a1d89"

  depends_on :java => "1.7+"

  def install
    prefix.install "lib"
    bin.install "bin/web3j"
  end

  test do
    system "#{bin}/web3j" "version"
  end
end
