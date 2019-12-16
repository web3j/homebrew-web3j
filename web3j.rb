
class Web3j < Formula
  desc "web3j command line tools for Ethereum"
  homepage "https://github.com/web3j/web3j"
  url "https://github.com/web3j/web3j-cli/releases/download/v4.5.11/web3j-4.5.11.zip"
  # update with: shasum -a 256
  sha256 "b0ff65f10bf49c11d12d2ed3e860516b50c6d6c0508b08e561bd677166425d69"

  depends_on :java => "1.7+"

  def install
    prefix.install "lib"
    bin.install "bin/web3j"
  end

  test do
    system "#{bin}/web3j" "version"
  end
end
