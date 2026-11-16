# Written by the release workflow in https://github.com/lgalabru/axel; edits here are overwritten.
class Axel < Formula
  desc "Agent orchestration, designed for Rex"
  homepage "https://axel.md"
  version "0.3.152"
  license "Apache-2.0"

  depends_on :macos

  on_arm do
    url "https://github.com/lgalabru/axel/releases/download/v0.3.152/axel-0.3.152-aarch64-apple-darwin.tar.gz"
    sha256 "cf8f905af24a0466e10d15ae3d97f7a946845f11c02d1a4ea8624a3ad33157b9"
  end
  on_intel do
    url "https://github.com/lgalabru/axel/releases/download/v0.3.152/axel-0.3.152-x86_64-apple-darwin.tar.gz"
    sha256 "19b797b06fcfa5472d38b8b1857bc115248938ee68420ca4b71221b4a66de322"
  end

  def install
    bin.install "axel"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/axel --version")
  end
end
