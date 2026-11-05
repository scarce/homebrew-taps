# Written by the release workflow in https://github.com/lgalabru/axel; edits here are overwritten.
class Axel < Formula
  desc "Agent orchestration, designed for Rex"
  homepage "https://axel.md"
  version "0.3.94"
  license "Apache-2.0"

  depends_on :macos

  on_arm do
    url "https://github.com/lgalabru/axel/releases/download/v0.3.94/axel-0.3.94-aarch64-apple-darwin.tar.gz"
    sha256 "9064c41db0a6fd95773f6d67e8fa02fa9b733334c9c70d0344768bd0651aa1bb"
  end
  on_intel do
    url "https://github.com/lgalabru/axel/releases/download/v0.3.94/axel-0.3.94-x86_64-apple-darwin.tar.gz"
    sha256 "79d477996ba2ffe87301342ced37fdfe0d5a37445ccddbe8dea1d4964263286d"
  end

  def install
    bin.install "axel"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/axel --version")
  end
end
