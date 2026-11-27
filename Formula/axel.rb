# Written by the release workflow in https://github.com/lgalabru/axel; edits here are overwritten.
class Axel < Formula
  desc "Agent orchestration, designed for Rex"
  homepage "https://axel.md"
  version "0.3.168"
  license "Apache-2.0"

  depends_on :macos

  on_arm do
    url "https://github.com/lgalabru/axel/releases/download/v0.3.168/axel-0.3.168-aarch64-apple-darwin.tar.gz"
    sha256 "ce6e868c083a558cd8406428c686c2b4f3f4046d680085f36611d9537e49e6a1"
  end
  on_intel do
    url "https://github.com/lgalabru/axel/releases/download/v0.3.168/axel-0.3.168-x86_64-apple-darwin.tar.gz"
    sha256 "db22d7db50557b358041e882e93ae15e46975c8818e6b5e01ff1ce05c3eb3e02"
  end

  def install
    bin.install "axel"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/axel --version")
  end
end
