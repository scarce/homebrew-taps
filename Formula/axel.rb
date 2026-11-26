# Written by the release workflow in https://github.com/lgalabru/axel; edits here are overwritten.
class Axel < Formula
  desc "Agent orchestration, designed for Rex"
  homepage "https://axel.md"
  version "0.3.164"
  license "Apache-2.0"

  depends_on :macos

  on_arm do
    url "https://github.com/lgalabru/axel/releases/download/v0.3.164/axel-0.3.164-aarch64-apple-darwin.tar.gz"
    sha256 "c5f66e8bf47005322e0e59d9c99c9973cb0000f35820ca14a4b6c488c91a6ad0"
  end
  on_intel do
    url "https://github.com/lgalabru/axel/releases/download/v0.3.164/axel-0.3.164-x86_64-apple-darwin.tar.gz"
    sha256 "9f76ad1075e45d6f1cd388b09dd7e886e493d98ef2081d29c7f0c9ea0a1ffd26"
  end

  def install
    bin.install "axel"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/axel --version")
  end
end
