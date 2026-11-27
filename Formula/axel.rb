# Written by the release workflow in https://github.com/lgalabru/axel; edits here are overwritten.
class Axel < Formula
  desc "Agent orchestration, designed for Rex"
  homepage "https://axel.md"
  version "0.3.169"
  license "Apache-2.0"

  depends_on :macos

  on_arm do
    url "https://github.com/lgalabru/axel/releases/download/v0.3.169/axel-0.3.169-aarch64-apple-darwin.tar.gz"
    sha256 "d56ca5a39d26d400147476a5a80719f49da2caab94fd7be25c3f37edce096192"
  end
  on_intel do
    url "https://github.com/lgalabru/axel/releases/download/v0.3.169/axel-0.3.169-x86_64-apple-darwin.tar.gz"
    sha256 "1707c20e83a15211b88b425cb5477b7e4b847954fdd8f942d25f14bd66ebe53f"
  end

  def install
    bin.install "axel"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/axel --version")
  end
end
