cask "explorer" do
  release_version = "0.6.0"
  base_url = "https://releases.mrrtt.me/explorer"

  name "Explorer"
  desc "File Explorer"
  homepage "https://github.com/hmerritt/explorer"
  version release_version

  on_arm do
    url "#{base_url}/#{release_version}/explorer-#{release_version}-macos-arm64-apple-silicon.zip"
    sha256 "9503829cfe0e727166e95b1b98bc1985916b12e63bfd383163515a4dfed189da"
  end

  on_intel do
    url "#{base_url}/#{release_version}/explorer-#{release_version}-macos-amd64-intel.zip"
    sha256 "f851b13ef4092e50773c0f2105e9bec9aec00a7f962042c7ee7693e161ca73bd"
  end

  app "Explorer.app"
  binary "#{appdir}/Explorer.app/Contents/MacOS/explorer", target: "explorer"

  zap trash: "~/Library/Application Support/com.hmerritt.explorer"
end
