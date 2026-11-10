# Written by the release workflow in https://github.com/lgalabru/axel; edits here are overwritten.
class Axel < Formula
  desc "Agent orchestration, designed for Rex"
  homepage "https://axel.md"
  version "0.3.132"
  license "Apache-2.0"

  depends_on :macos

  on_arm do
    url "https://github.com/lgalabru/axel/releases/download/v0.3.132/axel-0.3.132-aarch64-apple-darwin.tar.gz"
    sha256 "db91519ba0cfb636ec1da74d19686c9af7a1c2c0de149e0caa1363b5c245f644"
  end
  on_intel do
    url "https://github.com/lgalabru/axel/releases/download/v0.3.132/axel-0.3.132-x86_64-apple-darwin.tar.gz"
    sha256 "e64425655297a4fb730cb130044c01f4fc08ab0d4f36bb9f18ac3074182b7e3d"
  end

  def install
    bin.install "axel"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/axel --version")
  end
end
