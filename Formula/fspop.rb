class Fspop < Formula
  desc "Automate the creation of file structures using custom templates"
  homepage "https://github.com/hmerritt/fspop"
  version "1.3.250"

  if OS.mac? && Hardware::CPU.arm?
    url "https://releases.mrrtt.me/fspop/v1.3.250/fspop_1.3.250_darwin_arm64.zip"
    sha256 "4dc1d9499635c99c0829df23c23558ef633d744c4620b2b82638da47f325c4bb"
  end

  if OS.mac? && Hardware::CPU.intel?
    url "https://releases.mrrtt.me/fspop/v1.3.250/fspop_1.3.250_darwin_amd64.zip"
    sha256 "9f5b60e62a2e26890893532b9c8d5d5dcea930edd68fa3f3a8b372f0b8f8e740"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://releases.mrrtt.me/fspop/v1.3.250/fspop_1.3.250_linux_arm64.zip"
    sha256 "59c450fd44e950672190935f80ecb8572177efb7f06d038f8bcdf34e6f53edc1"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://releases.mrrtt.me/fspop/v1.3.250/fspop_1.3.250_linux_amd64.zip"
    sha256 "657d96c2f0474f3f1120c83d327dd7fd00832e02a2495c942af87d0038a0157a"
  end

  def install
    bin.install "fspop"
  end
end
