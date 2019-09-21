
class Web3j < Formula
  desc "web3j command line tools for Ethereum"
  homepage "https://github.com/web3j/web3j"
  url "https://github.com/web3j/web3j/releases/download/v4.5.4/web3j-4.5.4.zip"
  # update with: shasum -a 256
  sha256 "6502a0fe42929d9bce5ebbeffb45a1f8a53d84931440a57b952fba2c5ecf29fa"

  depends_on :java => "1.7+"

  def install
    prefix.install "lib"
    bin.install "bin/web3j"
  end

  test do
    system "#{bin}/web3j" "version"
  end
end
