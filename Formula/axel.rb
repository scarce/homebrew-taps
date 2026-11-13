# Written by the release workflow in https://github.com/lgalabru/axel; edits here are overwritten.
class Axel < Formula
  desc "Agent orchestration, designed for Rex"
  homepage "https://axel.md"
  version "0.3.147"
  license "Apache-2.0"

  depends_on :macos

  on_arm do
    url "https://github.com/lgalabru/axel/releases/download/v0.3.147/axel-0.3.147-aarch64-apple-darwin.tar.gz"
    sha256 "f4ad867178321e264db69951bb667b701ce9143d4aab354dcd347b8d83ad31f3"
  end
  on_intel do
    url "https://github.com/lgalabru/axel/releases/download/v0.3.147/axel-0.3.147-x86_64-apple-darwin.tar.gz"
    sha256 "7ca14f5cfb2ca02b40c56cd8fe417f8cf33bec54189eed1f70bffd185592cc58"
  end

  def install
    bin.install "axel"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/axel --version")
  end
end
