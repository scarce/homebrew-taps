# Written by the release workflow in https://github.com/lgalabru/axel; edits here are overwritten.
class Axel < Formula
  desc "Agent orchestration, designed for Rex"
  homepage "https://axel.md"
  version "0.3.139"
  license "Apache-2.0"

  depends_on :macos

  on_arm do
    url "https://github.com/lgalabru/axel/releases/download/v0.3.139/axel-0.3.139-aarch64-apple-darwin.tar.gz"
    sha256 "79d8bbdb6caa1cf676431904e6b7c3139356a58e6ed8234b063067e5a18442ca"
  end
  on_intel do
    url "https://github.com/lgalabru/axel/releases/download/v0.3.139/axel-0.3.139-x86_64-apple-darwin.tar.gz"
    sha256 "b1b5f912a38c1f9d79523a098d256cc87e73884d2d31d4c309cdb40b3675c65e"
  end

  def install
    bin.install "axel"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/axel --version")
  end
end
