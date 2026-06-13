cask "explorer" do
  release_version = "0.11.0"
  base_url = "https://github.com/hmerritt/explorer/releases/download"
  # base_url = "https://releases.mrrtt.me/explorer"

  name "Explorer"
  desc "File Explorer"
  homepage "https://github.com/hmerritt/explorer"
  version release_version

  on_arm do
    url "#{base_url}/#{release_version}/explorer-#{release_version}-macos-arm64-apple-silicon.zip"
    sha256 "89d78a3902b2af02040d1666e72cade50d5c59422d82931722ef3f35e5f4ad29"
  end

  on_intel do
    url "#{base_url}/#{release_version}/explorer-#{release_version}-macos-amd64-intel.zip"
    sha256 "918f79bd568340e7c8ffbe4a67d5bd02c4b2aa388e8df074b8554a18cc00456d"
  end

  app "Explorer.app"
  binary "#{appdir}/Explorer.app/Contents/MacOS/explorer", target: "explorer"

  zap trash: "~/Library/Application Support/com.hmerritt.explorer"
end
