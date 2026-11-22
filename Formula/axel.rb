# Written by the release workflow in https://github.com/lgalabru/axel; edits here are overwritten.
class Axel < Formula
  desc "Agent orchestration, designed for Rex"
  homepage "https://axel.md"
  version "0.3.159"
  license "Apache-2.0"

  depends_on :macos

  on_arm do
    url "https://github.com/lgalabru/axel/releases/download/v0.3.159/axel-0.3.159-aarch64-apple-darwin.tar.gz"
    sha256 "26908c8f6b76ac4662cd1b203d8894e38d862aec42c67cc533c28450b49e7a06"
  end
  on_intel do
    url "https://github.com/lgalabru/axel/releases/download/v0.3.159/axel-0.3.159-x86_64-apple-darwin.tar.gz"
    sha256 "a81931e1147c3845c1a63ef044bf8018f409b553c8f2e6ba3ec2bd78f7d40ad5"
  end

  def install
    bin.install "axel"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/axel --version")
  end
end
