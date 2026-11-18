# Written by the release workflow in https://github.com/lgalabru/axel; edits here are overwritten.
class Axel < Formula
  desc "Agent orchestration, designed for Rex"
  homepage "https://axel.md"
  version "0.3.154"
  license "Apache-2.0"

  depends_on :macos

  on_arm do
    url "https://github.com/lgalabru/axel/releases/download/v0.3.154/axel-0.3.154-aarch64-apple-darwin.tar.gz"
    sha256 "1e28cb8116593a55ab8c0f8c23507958770fc09274fa50a1c10ef4cc5db99573"
  end
  on_intel do
    url "https://github.com/lgalabru/axel/releases/download/v0.3.154/axel-0.3.154-x86_64-apple-darwin.tar.gz"
    sha256 "6af52effd13f55ab899e43c7c6d5fe65e6259d42c54b835eb4d9a58bef276388"
  end

  def install
    bin.install "axel"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/axel --version")
  end
end
