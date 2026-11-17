# Written by the release workflow in https://github.com/lgalabru/axel; edits here are overwritten.
class Axel < Formula
  desc "Agent orchestration, designed for Rex"
  homepage "https://axel.md"
  version "0.3.153"
  license "Apache-2.0"

  depends_on :macos

  on_arm do
    url "https://github.com/lgalabru/axel/releases/download/v0.3.153/axel-0.3.153-aarch64-apple-darwin.tar.gz"
    sha256 "f5002ef9220b1f8a0f57444c5d74ea23e1a3aeb83a37df8c988df4ce30e1b2f3"
  end
  on_intel do
    url "https://github.com/lgalabru/axel/releases/download/v0.3.153/axel-0.3.153-x86_64-apple-darwin.tar.gz"
    sha256 "8ecff92136d91685b88a582083db8f5bee78d64ecfb1ac9f63537beab7f8d8b8"
  end

  def install
    bin.install "axel"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/axel --version")
  end
end
