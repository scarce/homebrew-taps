# Written by the release workflow in https://github.com/lgalabru/axel; edits here are overwritten.
class Axel < Formula
  desc "Agent orchestration, designed for Rex"
  homepage "https://axel.md"
  version "0.3.83"
  license "Apache-2.0"

  depends_on :macos

  on_arm do
    url "https://github.com/lgalabru/axel/releases/download/v0.3.83/axel-0.3.83-aarch64-apple-darwin.tar.gz"
    sha256 "a258d08f515dbb8b28676769c72fcb2b13f1ad5d0ebba5a19257bc1143a1c53f"
  end
  on_intel do
    url "https://github.com/lgalabru/axel/releases/download/v0.3.83/axel-0.3.83-x86_64-apple-darwin.tar.gz"
    sha256 "4e309a6152952d2e145b11f20284f798430700b261fb4250b86e47824cbf5051"
  end

  def install
    bin.install "axel"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/axel --version")
  end
end
