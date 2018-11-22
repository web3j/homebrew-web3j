
class Web3j < Formula
  desc "web3j command line tools for Ethereum"
  homepage "https://github.com/web3j/web3j"
  url "https://github.com/web3j/web3j/releases/download/v4.0.1/web3j-4.0.1.zip"
  # update with: shasum -a 256
  sha256 "a5e0754094334d4dbe8a3d7f3d0914298f6f79aff75fdb909a256cc56370eed9"

  depends_on :java => "1.7+"

  def install
    prefix.install "lib"
    bin.install "bin/web3j"
  end

  test do
    system "#{bin}/web3j" "version"
  end
end
