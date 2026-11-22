# Written by the release workflow in https://github.com/lgalabru/axel; edits here are overwritten.
class Axel < Formula
  desc "Agent orchestration, designed for Rex"
  homepage "https://axel.md"
  version "0.3.160"
  license "Apache-2.0"

  depends_on :macos

  on_arm do
    url "https://github.com/lgalabru/axel/releases/download/v0.3.160/axel-0.3.160-aarch64-apple-darwin.tar.gz"
    sha256 "4047f3ca1b25aec6eb31ff767d7da0d4e735bc387d2c2b511d32097bcd7503db"
  end
  on_intel do
    url "https://github.com/lgalabru/axel/releases/download/v0.3.160/axel-0.3.160-x86_64-apple-darwin.tar.gz"
    sha256 "f49b3c9b3fd614f76305452d30ed885241a966937953cf0de7a210533c4d29bb"
  end

  def install
    bin.install "axel"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/axel --version")
  end
end
