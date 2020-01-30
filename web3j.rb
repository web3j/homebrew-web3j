
class Web3j < Formula
  desc "web3j command line tools for Ethereum"
  homepage "https://github.com/web3j/web3j"
  url "https://github.com/web3j/web3j-cli/releases/download/v4.5.14/web3j-4.5.14.zip"
  # update with: shasum -a 256
  sha256 "ed296e7c8daf28ab386227b40f8e542cb9423a3b627c542a62ab18cd75fdefed"

  depends_on :java => "1.7+"

  def install
    prefix.install "lib"
    bin.install "bin/web3j"
  end

  test do
    system "#{bin}/web3j" "version"
  end
end
