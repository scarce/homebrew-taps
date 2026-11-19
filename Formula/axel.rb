# Written by the release workflow in https://github.com/lgalabru/axel; edits here are overwritten.
class Axel < Formula
  desc "Agent orchestration, designed for Rex"
  homepage "https://axel.md"
  version "0.3.157"
  license "Apache-2.0"

  depends_on :macos

  on_arm do
    url "https://github.com/lgalabru/axel/releases/download/v0.3.157/axel-0.3.157-aarch64-apple-darwin.tar.gz"
    sha256 "01167b582d2b0cc3728d33f8c803621f042360cc2011bd1cd179926bc876faf8"
  end
  on_intel do
    url "https://github.com/lgalabru/axel/releases/download/v0.3.157/axel-0.3.157-x86_64-apple-darwin.tar.gz"
    sha256 "0c92e34ab987860cf5900d5981895b43ccd766590d6d092daafabc7b10b45fdd"
  end

  def install
    bin.install "axel"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/axel --version")
  end
end
