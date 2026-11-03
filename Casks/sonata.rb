cask "sonata" do
  version "0.1.9"
  sha256 "5df89c393d3d74217dcdced1f5a98d408203c843f617626f0ed8eee7a7b16698"

  url "https://github.com/lgalabru/sonata/releases/download/v#{version}/Sonata-#{version}.zip"
  name "Sonata"
  desc "Solana leader schedule and validator earnings in the menu bar"
  homepage "https://github.com/lgalabru/sonata"

  depends_on macos: :sequoia

  app "Sonata.app"

  uninstall quit: "sh.scarce.Sonata"

  zap trash: [
    "~/Library/Caches/sonata",
    "~/Library/Preferences/dev.sonata.Sonata.plist",
    "~/Library/Preferences/sh.scarce.Sonata.plist",
  ]

  caveats <<~EOS
    This build of Sonata is signed ad hoc, not notarized. If macOS won't open it,
    allow it once in System Settings → Privacy & Security → Open Anyway.
  EOS
end
