# Written by the release workflow in https://github.com/lgalabru/axel; edits here are overwritten.
class Axel < Formula
  desc "Agent orchestration, designed for Rex"
  homepage "https://axel.md"
  version "0.3.85"
  license "Apache-2.0"

  depends_on :macos

  on_arm do
    url "https://github.com/lgalabru/axel/releases/download/v0.3.85/axel-0.3.85-aarch64-apple-darwin.tar.gz"
    sha256 "5910566c764f5502166fc424b8ed0f92b5d743ed47b657dc8177c9116ca8de15"
  end
  on_intel do
    url "https://github.com/lgalabru/axel/releases/download/v0.3.85/axel-0.3.85-x86_64-apple-darwin.tar.gz"
    sha256 "06aabe0b6e37f7864c8a0a541725746291d5957495fe183eeddd03c4f1a17ec3"
  end

  def install
    bin.install "axel"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/axel --version")
  end
end
