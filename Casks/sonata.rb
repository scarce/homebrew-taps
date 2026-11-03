cask "sonata" do
  version "0.1.7"
  sha256 "3b4a1347c57f4dc3e636e3b80616cd89c0a8a2d64b1057e9b31e86c69b38e0ee"

  url "https://github.com/lgalabru/sonata/releases/download/v#{version}/Sonata-#{version}.zip"
  name "Sonata"
  desc "Solana leader schedule and validator earnings in the menu bar"
  homepage "https://github.com/lgalabru/sonata"

  depends_on macos: :sequoia

  app "Sonata.app"

  uninstall quit: "dev.sonata.Sonata"

  zap trash: [
    "~/Library/Caches/sonata",
    "~/Library/Preferences/dev.sonata.Sonata.plist",
  ]

  caveats <<~EOS
    This build of Sonata is signed ad hoc, not notarized. If macOS won't open it,
    allow it once in System Settings → Privacy & Security → Open Anyway.
  EOS
end
