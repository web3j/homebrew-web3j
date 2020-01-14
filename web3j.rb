
class Web3j < Formula
  desc "web3j command line tools for Ethereum"
  homepage "https://github.com/web3j/web3j"
  url "https://github.com/web3j/web3j-cli/releases/download/v4.5.12/web3j-4.5.12.zip"
  # update with: shasum -a 256
  sha256 "c5025a3924d715127b51c8df71fb5e58a4c6e0f8b949924462f0d055e67243be"

  depends_on :java => "1.7+"

  def install
    prefix.install "lib"
    bin.install "bin/web3j"
  end

  test do
    system "#{bin}/web3j" "version"
  end
end
