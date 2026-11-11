# Written by the release workflow in https://github.com/lgalabru/axel; edits here are overwritten.
class Axel < Formula
  desc "Agent orchestration, designed for Rex"
  homepage "https://axel.md"
  version "0.3.137"
  license "Apache-2.0"

  depends_on :macos

  on_arm do
    url "https://github.com/lgalabru/axel/releases/download/v0.3.137/axel-0.3.137-aarch64-apple-darwin.tar.gz"
    sha256 "36e20b02b87fcf5a249b09527a9fa16f6999c71050add14dbbf359d0eff025f0"
  end
  on_intel do
    url "https://github.com/lgalabru/axel/releases/download/v0.3.137/axel-0.3.137-x86_64-apple-darwin.tar.gz"
    sha256 "4623a4d773a86bfbf8d749bc06137ce893e35fb5cab95df1114c23e9637ea8fd"
  end

  def install
    bin.install "axel"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/axel --version")
  end
end
