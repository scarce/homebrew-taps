# Written by the release workflow in https://github.com/lgalabru/axel; edits here are overwritten.
class Axel < Formula
  desc "Agent orchestration, designed for Rex"
  homepage "https://axel.md"
  version "0.3.127"
  license "Apache-2.0"

  depends_on :macos

  on_arm do
    url "https://github.com/lgalabru/axel/releases/download/v0.3.127/axel-0.3.127-aarch64-apple-darwin.tar.gz"
    sha256 "9d8e394f165ec030da24069b5f101846e71632d8d01454b17c6bd3fdfd81aede"
  end
  on_intel do
    url "https://github.com/lgalabru/axel/releases/download/v0.3.127/axel-0.3.127-x86_64-apple-darwin.tar.gz"
    sha256 "819fb6c7117844b7e5bbb26ef28cb7af6c6c01b02215c2000dd170e2325bf851"
  end

  def install
    bin.install "axel"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/axel --version")
  end
end
