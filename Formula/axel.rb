# Written by the release workflow in https://github.com/lgalabru/axel; edits here are overwritten.
class Axel < Formula
  desc "Agent orchestration, designed for Rex"
  homepage "https://axel.md"
  version "0.3.105"
  license "Apache-2.0"

  depends_on :macos

  on_arm do
    url "https://github.com/lgalabru/axel/releases/download/v0.3.105/axel-0.3.105-aarch64-apple-darwin.tar.gz"
    sha256 "7572ef6de55c063c36650162c07560246a2ba89fab06c57d6356be55a49f514d"
  end
  on_intel do
    url "https://github.com/lgalabru/axel/releases/download/v0.3.105/axel-0.3.105-x86_64-apple-darwin.tar.gz"
    sha256 "3ee5cbf80e09642f3f82cc7cfe90bc2ab40eec1b31a8782923e0c50840ebf874"
  end

  def install
    bin.install "axel"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/axel --version")
  end
end
