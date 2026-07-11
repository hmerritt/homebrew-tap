class AutoExtract < Formula
  release_version = "1.4.102"
  base_url = "https://releases.mrrtt.me/auto-extract"

  desc "Watches your Downloads directory (or any directory) for ZIPs and archives and automatically extracts them for you"
  homepage "https://gitlab.com/mrrttjd/auto-extract"
  version release_version

  if OS.mac? && Hardware::CPU.arm?
    url "#{base_url}/v#{release_version}/auto-extract_#{release_version}_darwin_arm64.zip"
    sha256 "562d2b771a2bf450cbf2d91dbf8d1ac8896a3737c5f8e24dd614b94b185aaba0"
  end

  if OS.mac? && Hardware::CPU.intel?
    url "#{base_url}/v#{release_version}/auto-extract_#{release_version}_darwin_amd64.zip"
    sha256 "a695940550f5ab86a8d48e16c2cbc49d1350168314519fc6ecda46d707d30fd8"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "#{base_url}/v#{release_version}/auto-extract_#{release_version}_linux_arm64.zip"
    sha256 "2cd27e019bde753ee0470e0e0812fa23e7508989e7f76ed789a6deebae6be3a6"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "#{base_url}/v#{release_version}/auto-extract_#{release_version}_linux_amd64.zip"
    sha256 "4129f5803f027d5da4e23adabf9699693f0c5e232d34b03bf6e07ff24dfd4dd5"
  end

  def install
    bin.install "auto-extract"
  end
end
