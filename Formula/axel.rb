# Written by the release workflow in https://github.com/lgalabru/axel; edits here are overwritten.
class Axel < Formula
  desc "Agent orchestration, designed for Rex"
  homepage "https://axel.md"
  version "0.3.162"
  license "Apache-2.0"

  depends_on :macos

  on_arm do
    url "https://github.com/lgalabru/axel/releases/download/v0.3.162/axel-0.3.162-aarch64-apple-darwin.tar.gz"
    sha256 "63a941d308d0160f46487666c4840d79e0300c433f9688b33a99d9fa4c76cf1e"
  end
  on_intel do
    url "https://github.com/lgalabru/axel/releases/download/v0.3.162/axel-0.3.162-x86_64-apple-darwin.tar.gz"
    sha256 "87f1436c79c751651ab1fca2c5f63e1ece994b2660b1136a858e7128090fe327"
  end

  def install
    bin.install "axel"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/axel --version")
  end
end
