cask "explorer" do
  release_version = "0.19.0"
  base_url = "https://github.com/hmerritt/explorer/releases/download"
  # base_url = "https://releases.mrrtt.me/explorer"

  name "Explorer"
  desc "Windows File Explorer for macOS, Linux, and Windows."
  homepage "https://github.com/hmerritt/explorer"
  version release_version

  on_arm do
    url "#{base_url}/#{release_version}/explorer-#{release_version}-macos-arm64-apple-silicon.zip"
    sha256 "ec2a53a31c0d19a48fa1dd6bbd96710de29c994d3bc24eb969e44a2e3ca264f2"
  end

  on_intel do
    url "#{base_url}/#{release_version}/explorer-#{release_version}-macos-amd64-intel.zip"
    sha256 "35561bfc71bd003ac30b61caa7635f0f684440443fca520d91eeca10c2552f2a"
  end

  app "Explorer.app"
  binary "#{appdir}/Explorer.app/Contents/MacOS/explorer", target: "explorer"

  zap trash: "~/Library/Application Support/com.hmerritt.explorer"
end
