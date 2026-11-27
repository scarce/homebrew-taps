# Written by the release workflow in https://github.com/lgalabru/axel; edits here are overwritten.
class Axel < Formula
  desc "Agent orchestration, designed for Rex"
  homepage "https://axel.md"
  version "0.3.167"
  license "Apache-2.0"

  depends_on :macos

  on_arm do
    url "https://github.com/lgalabru/axel/releases/download/v0.3.167/axel-0.3.167-aarch64-apple-darwin.tar.gz"
    sha256 "8d75a3b4dcddc737d70cecee52b24f8983152bd7839654c691cfe03ea2074bb6"
  end
  on_intel do
    url "https://github.com/lgalabru/axel/releases/download/v0.3.167/axel-0.3.167-x86_64-apple-darwin.tar.gz"
    sha256 "521a852c54ce0c11f8181b5cf87c6f983bc5ee8acced052e0b0320b668981518"
  end

  def install
    bin.install "axel"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/axel --version")
  end
end
