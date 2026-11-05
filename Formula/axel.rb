# Written by the release workflow in https://github.com/lgalabru/axel; edits here are overwritten.
class Axel < Formula
  desc "Agent orchestration, designed for Rex"
  homepage "https://axel.md"
  version "0.3.95"
  license "Apache-2.0"

  depends_on :macos

  on_arm do
    url "https://github.com/lgalabru/axel/releases/download/v0.3.95/axel-0.3.95-aarch64-apple-darwin.tar.gz"
    sha256 "8fd3ce1db8026727d24ee86f77539e6441aed0b60a20108e8266807d1d88a6ca"
  end
  on_intel do
    url "https://github.com/lgalabru/axel/releases/download/v0.3.95/axel-0.3.95-x86_64-apple-darwin.tar.gz"
    sha256 "d4a7d19eef03c26526597ef8e5c6c6dba83e1012381850483864fd8977abc16d"
  end

  def install
    bin.install "axel"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/axel --version")
  end
end
