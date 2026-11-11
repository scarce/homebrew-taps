# Written by the release workflow in https://github.com/lgalabru/axel; edits here are overwritten.
class Axel < Formula
  desc "Agent orchestration, designed for Rex"
  homepage "https://axel.md"
  version "0.3.141"
  license "Apache-2.0"

  depends_on :macos

  on_arm do
    url "https://github.com/lgalabru/axel/releases/download/v0.3.141/axel-0.3.141-aarch64-apple-darwin.tar.gz"
    sha256 "3dd076d7678d94241d9c2a16d4956aa8e248425e77a0f4ab264c50fcdcf54e10"
  end
  on_intel do
    url "https://github.com/lgalabru/axel/releases/download/v0.3.141/axel-0.3.141-x86_64-apple-darwin.tar.gz"
    sha256 "3ea5e878febb415a7bc348eb4047e1265d4cfb1c6610a5a7b95d488449eb8546"
  end

  def install
    bin.install "axel"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/axel --version")
  end
end
