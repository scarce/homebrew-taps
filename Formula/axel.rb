# Written by the release workflow in https://github.com/lgalabru/axel; edits here are overwritten.
class Axel < Formula
  desc "Agent orchestration, designed for Rex"
  homepage "https://axel.md"
  version "0.3.156"
  license "Apache-2.0"

  depends_on :macos

  on_arm do
    url "https://github.com/lgalabru/axel/releases/download/v0.3.156/axel-0.3.156-aarch64-apple-darwin.tar.gz"
    sha256 "666348a078ca74c0e867460fb106239bcac9b1aa50c75fcd81420a38d2518cc3"
  end
  on_intel do
    url "https://github.com/lgalabru/axel/releases/download/v0.3.156/axel-0.3.156-x86_64-apple-darwin.tar.gz"
    sha256 "27ee56f31e00646671602bf3e931ccd65c3f8b15422937188c9618566a6b42c3"
  end

  def install
    bin.install "axel"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/axel --version")
  end
end
