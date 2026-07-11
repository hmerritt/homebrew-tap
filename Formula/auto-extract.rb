class AutoExtract < Formula
  release_version = "1.4.103"
  base_url = "https://releases.mrrtt.me/auto-extract"

  desc "Watches your Downloads directory (or any directory) for ZIPs and archives and automatically extracts them for you"
  homepage "https://gitlab.com/mrrttjd/auto-extract"
  version release_version

  if OS.mac? && Hardware::CPU.arm?
    url "#{base_url}/v#{release_version}/auto-extract_#{release_version}_darwin_arm64.zip"
    sha256 "3fdb7823ee4286ddbb06ceae3a6ba549f82fa0c90fc03d2d14e672878238ad8e"
  end

  if OS.mac? && Hardware::CPU.intel?
    url "#{base_url}/v#{release_version}/auto-extract_#{release_version}_darwin_amd64.zip"
    sha256 "9124fbbceff61e4b7c6080ba0524abc98d34e2da8da0e4ab26c907f8bccb59b0"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "#{base_url}/v#{release_version}/auto-extract_#{release_version}_linux_arm64.zip"
    sha256 "d7f4bf1cd58aaa380fbfef87f8faa2ca9dcfc742ea89e3ecd4445e91fb7babb9"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "#{base_url}/v#{release_version}/auto-extract_#{release_version}_linux_amd64.zip"
    sha256 "4bd733f8697b07caa68518e51ca071a7f1ea7922b8989300d8339eeac36187cf"
  end

  def install
    bin.install "auto-extract"
  end
end
