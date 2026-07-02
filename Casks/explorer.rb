cask "explorer" do
  release_version = "0.15.0"
  base_url = "https://github.com/hmerritt/explorer/releases/download"
  # base_url = "https://releases.mrrtt.me/explorer"

  name "Explorer"
  desc "Windows File Explorer for macOS, Linux, and Windows."
  homepage "https://github.com/hmerritt/explorer"
  version release_version

  on_arm do
    url "#{base_url}/#{release_version}/explorer-#{release_version}-macos-arm64-apple-silicon.zip"
    sha256 "7733bf35d0dfaf981c6efa90ecebe402cb991360e503188bed4efcd5f6101692"
  end

  on_intel do
    url "#{base_url}/#{release_version}/explorer-#{release_version}-macos-amd64-intel.zip"
    sha256 "670492a0822359350aa7745a776d19788180635fef2940aee823368d4c36beb9"
  end

  app "Explorer.app"
  binary "#{appdir}/Explorer.app/Contents/MacOS/explorer", target: "explorer"

  zap trash: "~/Library/Application Support/com.hmerritt.explorer"
end
