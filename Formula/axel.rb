# Written by the release workflow in https://github.com/lgalabru/axel; edits here are overwritten.
class Axel < Formula
  desc "Agent orchestration, designed for Rex"
  homepage "https://axel.md"
  version "0.3.131"
  license "Apache-2.0"

  depends_on :macos

  on_arm do
    url "https://github.com/lgalabru/axel/releases/download/v0.3.131/axel-0.3.131-aarch64-apple-darwin.tar.gz"
    sha256 "60c132e94f71c0a4cda275a446ceac2227f7f86b3524b13539ffac92fb44e882"
  end
  on_intel do
    url "https://github.com/lgalabru/axel/releases/download/v0.3.131/axel-0.3.131-x86_64-apple-darwin.tar.gz"
    sha256 "fc85cfb46a2377fb0e96e7a51fc0018a5cceb9dd40ff7e7747000bad3ca8690f"
  end

  def install
    bin.install "axel"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/axel --version")
  end
end
