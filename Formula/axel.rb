# Written by the release workflow in https://github.com/lgalabru/axel; edits here are overwritten.
class Axel < Formula
  desc "Agent orchestration, designed for Rex"
  homepage "https://axel.md"
  version "0.3.143"
  license "Apache-2.0"

  depends_on :macos

  on_arm do
    url "https://github.com/lgalabru/axel/releases/download/v0.3.143/axel-0.3.143-aarch64-apple-darwin.tar.gz"
    sha256 "6f43ca81d53e5d4acb57df7564d8852649ee5f74f949f72920add90e09e56aff"
  end
  on_intel do
    url "https://github.com/lgalabru/axel/releases/download/v0.3.143/axel-0.3.143-x86_64-apple-darwin.tar.gz"
    sha256 "e468f5b2a0b93e13ce34d355740ba06da9cac2fee81344e0fc66a204161536a3"
  end

  def install
    bin.install "axel"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/axel --version")
  end
end
