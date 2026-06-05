cask "explorer" do
  release_version = "0.8.0"
  base_url = "https://releases.mrrtt.me/explorer"

  name "Explorer"
  desc "File Explorer"
  homepage "https://github.com/hmerritt/explorer"
  version release_version

  on_arm do
    url "#{base_url}/#{release_version}/explorer-#{release_version}-macos-arm64-apple-silicon.zip"
    sha256 "f6fdda183e03e44c09e8b45ade7f562bd76f05dc8b2f9065b6352a0e8e7653ac"
  end

  on_intel do
    url "#{base_url}/#{release_version}/explorer-#{release_version}-macos-amd64-intel.zip"
    sha256 "00b6bed1eae292672a14bf03fda545b8dcd8cf0d3dab61782e95614dfa4e85a1"
  end

  app "Explorer.app"
  binary "#{appdir}/Explorer.app/Contents/MacOS/explorer", target: "explorer"

  zap trash: "~/Library/Application Support/com.hmerritt.explorer"
end
