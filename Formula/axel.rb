# Written by the release workflow in https://github.com/lgalabru/axel; edits here are overwritten.
class Axel < Formula
  desc "Agent orchestration, designed for Rex"
  homepage "https://axel.md"
  version "0.3.161"
  license "Apache-2.0"

  depends_on :macos

  on_arm do
    url "https://github.com/lgalabru/axel/releases/download/v0.3.161/axel-0.3.161-aarch64-apple-darwin.tar.gz"
    sha256 "97dfd54d53207d066d25622803ecd0f87e1ff6dd2f1a19e4b6b404be05149ade"
  end
  on_intel do
    url "https://github.com/lgalabru/axel/releases/download/v0.3.161/axel-0.3.161-x86_64-apple-darwin.tar.gz"
    sha256 "2e3e8722e3fce69fa0a38c28c3871e4e5571ea8dca78e10b95b355d51e8b9532"
  end

  def install
    bin.install "axel"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/axel --version")
  end
end
