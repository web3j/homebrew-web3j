
class Web3j < Formula
  desc "web3j command line tools for Ethereum"
  homepage "https://github.com/web3j/web3j"
  url "https://github.com/web3j/web3j-cli/releases/download/v4.5.9/web3j-4.5.9.zip"
  # update with: shasum -a 256
  sha256 "51413d24797a44c625035aa3dbadabe9e32e70d9994bf76c2ce71f49ca5c7615"

  depends_on :java => "1.7+"

  def install
    prefix.install "lib"
    bin.install "bin/web3j"
  end

  test do
    system "#{bin}/web3j" "version"
  end
end
