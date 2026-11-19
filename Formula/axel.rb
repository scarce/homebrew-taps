# Written by the release workflow in https://github.com/lgalabru/axel; edits here are overwritten.
class Axel < Formula
  desc "Agent orchestration, designed for Rex"
  homepage "https://axel.md"
  version "0.3.158"
  license "Apache-2.0"

  depends_on :macos

  on_arm do
    url "https://github.com/lgalabru/axel/releases/download/v0.3.158/axel-0.3.158-aarch64-apple-darwin.tar.gz"
    sha256 "205a03d5ad2b7a12f7c57eb75460cab30ca9299f0a0a149a4b39c2bfb993c695"
  end
  on_intel do
    url "https://github.com/lgalabru/axel/releases/download/v0.3.158/axel-0.3.158-x86_64-apple-darwin.tar.gz"
    sha256 "a6e2b92ff7937de05de82ce91c9c4db96b2ba8c73d3e254c86735f323a4b438f"
  end

  def install
    bin.install "axel"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/axel --version")
  end
end
