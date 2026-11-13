# Written by the release workflow in https://github.com/lgalabru/axel; edits here are overwritten.
class Axel < Formula
  desc "Agent orchestration, designed for Rex"
  homepage "https://axel.md"
  version "0.3.146"
  license "Apache-2.0"

  depends_on :macos

  on_arm do
    url "https://github.com/lgalabru/axel/releases/download/v0.3.146/axel-0.3.146-aarch64-apple-darwin.tar.gz"
    sha256 "c1b032b5ac52e08fdbc67f7ddbb8f5837e6a856b30fcb8d905c5c5119bc920ab"
  end
  on_intel do
    url "https://github.com/lgalabru/axel/releases/download/v0.3.146/axel-0.3.146-x86_64-apple-darwin.tar.gz"
    sha256 "509a17f0c1fa809547a5fdc2c349760bc377569e532be23ada301746a41bf20e"
  end

  def install
    bin.install "axel"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/axel --version")
  end
end
