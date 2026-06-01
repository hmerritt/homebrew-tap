class Exifmeta < Formula
  desc "EXIF read/write/remove tool — useful for film photographers"
  homepage "https://github.com/hmerritt/exifmeta"
  version "1.4.0"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/hmerritt/exifmeta/releases/download/1.4.0/exifmeta-1.4.0-macos-arm64-apple-silicon.zip"
    sha256 "0756abea232d1927fb05f016abe59db4e4e9553d3fc0c1efc69c5b4baa3149fe"
  end

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/hmerritt/exifmeta/releases/download/1.4.0/exifmeta-1.4.0-macos-amd64-intel.zip"
    sha256 "3f25501136317627613d06e5c0846aa6484e2e25208f459a7e066c18bddb2310"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://github.com/hmerritt/exifmeta/releases/download/1.4.0/exifmeta-1.4.0-linux-arm64.zip"
    sha256 "16037be8c6d3164c5f809f936f46dcaabaf754606b3e21c374b5afac0d8ec663"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/hmerritt/exifmeta/releases/download/1.4.0/exifmeta-1.4.0-linux-amd64.zip"
    sha256 "97429e99dd223a190b7a6f0875da6eb2ef5a499057bdec61669c6e3326b8fd09"
  end

  def install
    bin.install "exifmeta"
  end
end
