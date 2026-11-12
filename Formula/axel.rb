# Written by the release workflow in https://github.com/lgalabru/axel; edits here are overwritten.
class Axel < Formula
  desc "Agent orchestration, designed for Rex"
  homepage "https://axel.md"
  version "0.3.144"
  license "Apache-2.0"

  depends_on :macos

  on_arm do
    url "https://github.com/lgalabru/axel/releases/download/v0.3.144/axel-0.3.144-aarch64-apple-darwin.tar.gz"
    sha256 "5370c9ac7e9306c375c972b5af53ed65b0d88a8be2be0eb0a20d8f15488f6086"
  end
  on_intel do
    url "https://github.com/lgalabru/axel/releases/download/v0.3.144/axel-0.3.144-x86_64-apple-darwin.tar.gz"
    sha256 "647d6caeeecdd20da02718cc165c3f34bef16c9874df13d68bda3d0c1086e370"
  end

  def install
    bin.install "axel"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/axel --version")
  end
end
