# Written by the release workflow in https://github.com/lgalabru/axel; edits here are overwritten.
class Axel < Formula
  desc "Agent orchestration, designed for Rex"
  homepage "https://axel.md"
  version "0.3.88"
  license "Apache-2.0"

  depends_on :macos

  on_arm do
    url "https://github.com/lgalabru/axel/releases/download/v0.3.88/axel-0.3.88-aarch64-apple-darwin.tar.gz"
    sha256 "21b345a4f468d1ec131678201db03de9585be00088c1571c8f92910cfb0d48d7"
  end
  on_intel do
    url "https://github.com/lgalabru/axel/releases/download/v0.3.88/axel-0.3.88-x86_64-apple-darwin.tar.gz"
    sha256 "6db9c4a45528f77a178d305f19d36dcdb85bdf1dc755aaa6e08a7b5b719323bf"
  end

  def install
    bin.install "axel"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/axel --version")
  end
end
