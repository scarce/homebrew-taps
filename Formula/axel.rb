# Written by the release workflow in https://github.com/lgalabru/axel; edits here are overwritten.
class Axel < Formula
  desc "Agent orchestration, designed for Rex"
  homepage "https://axel.md"
  version "0.3.150"
  license "Apache-2.0"

  depends_on :macos

  on_arm do
    url "https://github.com/lgalabru/axel/releases/download/v0.3.150/axel-0.3.150-aarch64-apple-darwin.tar.gz"
    sha256 "aa3386d9144a2ae0053ab897b123b1366bf95519b7a38291788563429d9bd108"
  end
  on_intel do
    url "https://github.com/lgalabru/axel/releases/download/v0.3.150/axel-0.3.150-x86_64-apple-darwin.tar.gz"
    sha256 "d4001d50e0d3cfd9027c7714910c0ed36ab82761112b92a0769215fe55c23e64"
  end

  def install
    bin.install "axel"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/axel --version")
  end
end
