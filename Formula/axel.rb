# Written by the release workflow in https://github.com/lgalabru/axel; edits here are overwritten.
class Axel < Formula
  desc "Agent orchestration, designed for Rex"
  homepage "https://axel.md"
  version "0.3.108"
  license "Apache-2.0"

  depends_on :macos

  on_arm do
    url "https://github.com/lgalabru/axel/releases/download/v0.3.108/axel-0.3.108-aarch64-apple-darwin.tar.gz"
    sha256 "dd29ee58e862bfcd84662804e0025a2d393aa8199c510641bbd432bcbf51dd2b"
  end
  on_intel do
    url "https://github.com/lgalabru/axel/releases/download/v0.3.108/axel-0.3.108-x86_64-apple-darwin.tar.gz"
    sha256 "dbe70c4edbb727e71155a61f49bffe580d728c4719ea1dfdc5c12e4744084ec5"
  end

  def install
    bin.install "axel"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/axel --version")
  end
end
