cask "aura" do
  release_version = "1.2.0"
  release_sha256 = "bbe1f6ebac5ab8af7dcfae95d365b86a0f8a4fb08ff983570f09449c57c72ded"
  base_url = "https://github.com/hmerritt/aura/releases/download"

  name "aura"
  desc "Wallpaper manager with image rotation and live Metal shaders"
  homepage "https://github.com/hmerritt/aura"

  version release_version
  sha256 release_sha256
  url "#{base_url}/#{release_version}/aura-macos-arm64.dmg"

  depends_on arch: :arm64
  depends_on macos: :sonoma

  app "Aura.app"

  uninstall quit: "io.github.hmerritt.Aura"

  zap trash: [
    "~/.cache/aura",
    "~/.config/aura.hcl",
    "~/.local/share/aura",
    "~/.local/state/aura",
    "~/Library/Application Support/aura",
  ]

  caveats <<~EOS
    aura is ad-hoc signed, not notarized. On first launch, macOS may require
    approval in System Settings > Privacy & Security. Updates are managed by
    Homebrew; use `brew upgrade --cask aura`.
  EOS
end
