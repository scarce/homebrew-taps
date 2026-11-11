# Written by the release workflow in https://github.com/lgalabru/axel; edits here are overwritten.
class Axel < Formula
  desc "Agent orchestration, designed for Rex"
  homepage "https://axel.md"
  version "0.3.142"
  license "Apache-2.0"

  depends_on :macos

  on_arm do
    url "https://github.com/lgalabru/axel/releases/download/v0.3.142/axel-0.3.142-aarch64-apple-darwin.tar.gz"
    sha256 "7f0d478ab71e47b7ae91abcd522af5256ba81f8cf485db14f7cca69ba853edb7"
  end
  on_intel do
    url "https://github.com/lgalabru/axel/releases/download/v0.3.142/axel-0.3.142-x86_64-apple-darwin.tar.gz"
    sha256 "1e0f2e77d0f8584cd9ec70984e982dc87bc02291875e40201f47ed77bd1a7951"
  end

  def install
    bin.install "axel"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/axel --version")
  end
end
