cask "explorer" do
  release_version = "0.26.0"
  base_url = "https://github.com/hmerritt/explorer/releases/download"
  # base_url = "https://releases.mrrtt.me/explorer"

  name "Explorer"
  desc "Windows File Explorer for macOS, Linux, and Windows."
  homepage "https://github.com/hmerritt/explorer"
  version release_version

  on_arm do
    url "#{base_url}/#{release_version}/explorer-#{release_version}-macos-arm64-apple-silicon.zip"
    sha256 "2664cfe8bf7b6c3dfc41f1a31549ed962daa33cef7115faf5ca9acf3cd0cbe92"
  end

  on_intel do
    url "#{base_url}/#{release_version}/explorer-#{release_version}-macos-amd64-intel.zip"
    sha256 "d6a8bae7bb42ea935f02a997ab725ac8d6451df83bb70ae332682a0a52754fec"
  end

  app "Explorer.app"
  binary "#{appdir}/Explorer.app/Contents/MacOS/explorer", target: "explorer"

  zap trash: "~/Library/Application Support/com.hmerritt.explorer"
end
