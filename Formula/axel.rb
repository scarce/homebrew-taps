# Written by the release workflow in https://github.com/lgalabru/axel; edits here are overwritten.
class Axel < Formula
  desc "Agent orchestration, designed for Rex"
  homepage "https://axel.md"
  version "0.3.130"
  license "Apache-2.0"

  depends_on :macos

  on_arm do
    url "https://github.com/lgalabru/axel/releases/download/v0.3.130/axel-0.3.130-aarch64-apple-darwin.tar.gz"
    sha256 "82bc10d1233a7a659521eb49f0e9058690cc2f830087f984dd4ae1ba70df354e"
  end
  on_intel do
    url "https://github.com/lgalabru/axel/releases/download/v0.3.130/axel-0.3.130-x86_64-apple-darwin.tar.gz"
    sha256 "28c1dd3696b14d98c0041452df1b4fdc2f56c2284dc80657ebe310fc3ee3a651"
  end

  def install
    bin.install "axel"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/axel --version")
  end
end
