class Exifmeta < Formula
  desc "EXIF read/write/remove tool — useful for film photographers"
  homepage "https://github.com/hmerritt/exifmeta"
  version "1.2.0"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/hmerritt/exifmeta/releases/download/1.2.0/exifmeta-1.2.0-macos-arm64-apple-silicon.zip"
    sha256 "335208c8ead44b4c4af0bc19015a3984f0323f3832adc8733b3e3652bec8b238"
  end

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/hmerritt/exifmeta/releases/download/1.2.0/exifmeta-1.2.0-macos-amd64-intel.zip"
    sha256 "94aed33796636fa6316d219eb9ec8c9d368c777a2ce038a04bfd317cc0778ce7"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://github.com/hmerritt/exifmeta/releases/download/1.2.0/exifmeta-1.2.0-linux-arm64.zip"
    sha256 "9a3e90a5df515ca850f38ebdbb46555cdd46a586af3db1c762cf11da279ec00c"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/hmerritt/exifmeta/releases/download/1.2.0/exifmeta-1.2.0-linux-amd64.zip"
    sha256 "a8669531b5ed5bd04444f213277d20f61bb8c2651b82c472b7341460290e56e6"
  end

  def install
    bin.install "exifmeta"
  end
end
