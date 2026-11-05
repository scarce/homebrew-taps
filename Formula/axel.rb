# Written by the release workflow in https://github.com/lgalabru/axel; edits here are overwritten.
class Axel < Formula
  desc "Agent orchestration, designed for Rex"
  homepage "https://axel.md"
  version "0.3.86"
  license "Apache-2.0"

  depends_on :macos

  on_arm do
    url "https://github.com/lgalabru/axel/releases/download/v0.3.86/axel-0.3.86-aarch64-apple-darwin.tar.gz"
    sha256 "4b9ead0f28373e6d09d994373fb8efb26d3ef60ce10af6201b2ff08ed7ab2971"
  end
  on_intel do
    url "https://github.com/lgalabru/axel/releases/download/v0.3.86/axel-0.3.86-x86_64-apple-darwin.tar.gz"
    sha256 "4b614c65260a57f2d742be1f7a855e75af4ac1affa7194862ff7e0824412da73"
  end

  def install
    bin.install "axel"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/axel --version")
  end
end
