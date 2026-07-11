class AutoExtract < Formula
  release_version = "1.3.100"
  base_url = "https://releases.mrrtt.me/auto-extract"

  desc "Watches your Downloads directory (or any directory) for ZIPs and archives and automatically extracts them for you"
  homepage "https://gitlab.com/mrrttjd/auto-extract"
  version release_version

  if OS.mac? && Hardware::CPU.arm?
    url "#{base_url}/v#{release_version}/auto-extract_#{release_version}_darwin_arm64.zip"
    sha256 "16b1da4e778ec4d1ea4a3eb86c7b5f04f8848e31de017a37c274a4558d731088"
  end

  if OS.mac? && Hardware::CPU.intel?
    url "#{base_url}/v#{release_version}/auto-extract_#{release_version}_darwin_amd64.zip"
    sha256 "cfb5f2c173b94f222a86515d68fdedde88e58c6ad8dd177ded90b7db57696c5e"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "#{base_url}/v#{release_version}/auto-extract_#{release_version}_linux_arm64.zip"
    sha256 "be038f56d6ffa243bf2f5c1502f3dd42f84ea34758dd933bc7ab324e70ae1016"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "#{base_url}/v#{release_version}/auto-extract_#{release_version}_linux_amd64.zip"
    sha256 "47a5bfdbf590c318c80b374b89d5d148b9e7653c75ff315b0eadb0ac481e4a20"
  end

  def install
    bin.install "auto-extract"
  end
end
