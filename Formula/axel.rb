# Written by the release workflow in https://github.com/lgalabru/axel; edits here are overwritten.
class Axel < Formula
  desc "Agent orchestration, designed for Rex"
  homepage "https://axel.md"
  version "0.3.166"
  license "Apache-2.0"

  depends_on :macos

  on_arm do
    url "https://github.com/lgalabru/axel/releases/download/v0.3.166/axel-0.3.166-aarch64-apple-darwin.tar.gz"
    sha256 "1a94e6cd5dbae54a560e14a772a08d250c94ecf40ecebe070205d5108d1edddd"
  end
  on_intel do
    url "https://github.com/lgalabru/axel/releases/download/v0.3.166/axel-0.3.166-x86_64-apple-darwin.tar.gz"
    sha256 "c5b76d4d215faf6fc2925b0d5d9419bcc6603b76677401376ac205c91d976921"
  end

  def install
    bin.install "axel"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/axel --version")
  end
end
