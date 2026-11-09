# Written by the release workflow in https://github.com/lgalabru/axel; edits here are overwritten.
class Axel < Formula
  desc "Agent orchestration, designed for Rex"
  homepage "https://axel.md"
  version "0.3.126"
  license "Apache-2.0"

  depends_on :macos

  on_arm do
    url "https://github.com/lgalabru/axel/releases/download/v0.3.126/axel-0.3.126-aarch64-apple-darwin.tar.gz"
    sha256 "d3c7bd5dc6d6430821f80268cc4d5996d2b8aabafbd2fede5ea73e60e955c624"
  end
  on_intel do
    url "https://github.com/lgalabru/axel/releases/download/v0.3.126/axel-0.3.126-x86_64-apple-darwin.tar.gz"
    sha256 "815d617ebad04424e1abfcbcddde00e0e37bb0df340adf4931e714dcd59d30d2"
  end

  def install
    bin.install "axel"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/axel --version")
  end
end
