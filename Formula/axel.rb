# Written by the release workflow in https://github.com/lgalabru/axel; edits here are overwritten.
class Axel < Formula
  desc "Agent orchestration, designed for Rex"
  homepage "https://axel.md"
  version "0.3.145"
  license "Apache-2.0"

  depends_on :macos

  on_arm do
    url "https://github.com/lgalabru/axel/releases/download/v0.3.145/axel-0.3.145-aarch64-apple-darwin.tar.gz"
    sha256 "f71bf26ec0b13b6691bf152d5ad57a4b1f21ddad524bda4cbc3e5cc0769ffb40"
  end
  on_intel do
    url "https://github.com/lgalabru/axel/releases/download/v0.3.145/axel-0.3.145-x86_64-apple-darwin.tar.gz"
    sha256 "0eec51c6e514cf3d067f720e184e594bf6b5792335346acbb8290f69ef57e9ac"
  end

  def install
    bin.install "axel"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/axel --version")
  end
end
