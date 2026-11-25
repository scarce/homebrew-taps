# Written by the release workflow in https://github.com/lgalabru/axel; edits here are overwritten.
class Axel < Formula
  desc "Agent orchestration, designed for Rex"
  homepage "https://axel.md"
  version "0.3.163"
  license "Apache-2.0"

  depends_on :macos

  on_arm do
    url "https://github.com/lgalabru/axel/releases/download/v0.3.163/axel-0.3.163-aarch64-apple-darwin.tar.gz"
    sha256 "a12d6ff48fb2c2c84341257de89116313e521a402a53223fbd66beb2ceb1a618"
  end
  on_intel do
    url "https://github.com/lgalabru/axel/releases/download/v0.3.163/axel-0.3.163-x86_64-apple-darwin.tar.gz"
    sha256 "71188818f933890e1ca1ff1a3bfdc198c43029686c05f040cc66f6238593c6f8"
  end

  def install
    bin.install "axel"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/axel --version")
  end
end
