# Written by the release workflow in https://github.com/lgalabru/axel; edits here are overwritten.
class Axel < Formula
  desc "Agent orchestration, designed for Rex"
  homepage "https://axel.md"
  version "0.3.151"
  license "Apache-2.0"

  depends_on :macos

  on_arm do
    url "https://github.com/lgalabru/axel/releases/download/v0.3.151/axel-0.3.151-aarch64-apple-darwin.tar.gz"
    sha256 "ce37dd0e8f48382aeb683af9c8a567c96d9e388d7e08f41ea392dad74ec81597"
  end
  on_intel do
    url "https://github.com/lgalabru/axel/releases/download/v0.3.151/axel-0.3.151-x86_64-apple-darwin.tar.gz"
    sha256 "fcd9dbffeb0b8da3f0303fd630ea096b6409d30933d2c01620f3bb895a413904"
  end

  def install
    bin.install "axel"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/axel --version")
  end
end
