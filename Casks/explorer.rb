cask "explorer" do
  release_version = "0.22.0"
  base_url = "https://github.com/hmerritt/explorer/releases/download"
  # base_url = "https://releases.mrrtt.me/explorer"

  name "Explorer"
  desc "Windows File Explorer for macOS, Linux, and Windows."
  homepage "https://github.com/hmerritt/explorer"
  version release_version

  on_arm do
    url "#{base_url}/#{release_version}/explorer-#{release_version}-macos-arm64-apple-silicon.zip"
    sha256 "ea79b31cfbd5aa0d6becc20d1919c6a23b83c22166db8370aa15297c521ab657"
  end

  on_intel do
    url "#{base_url}/#{release_version}/explorer-#{release_version}-macos-amd64-intel.zip"
    sha256 "94f4f230565cb0eba01ab37f82280ec21154bb8c1bad911fcee4715f824827ab"
  end

  app "Explorer.app"
  binary "#{appdir}/Explorer.app/Contents/MacOS/explorer", target: "explorer"

  zap trash: "~/Library/Application Support/com.hmerritt.explorer"
end
