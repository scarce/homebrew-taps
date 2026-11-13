# Written by the release workflow in https://github.com/lgalabru/axel; edits here are overwritten.
class Axel < Formula
  desc "Agent orchestration, designed for Rex"
  homepage "https://axel.md"
  version "0.3.149"
  license "Apache-2.0"

  depends_on :macos

  on_arm do
    url "https://github.com/lgalabru/axel/releases/download/v0.3.149/axel-0.3.149-aarch64-apple-darwin.tar.gz"
    sha256 "1b5ff6a959c5345a03f68a1d0fdd4cc155a55c31622b3ff0d0a8269ddd4ca7e5"
  end
  on_intel do
    url "https://github.com/lgalabru/axel/releases/download/v0.3.149/axel-0.3.149-x86_64-apple-darwin.tar.gz"
    sha256 "2d830b8ee99245f142d0873efdecaf2b95e0e9f122f04254ca2832555b7cffac"
  end

  def install
    bin.install "axel"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/axel --version")
  end
end
