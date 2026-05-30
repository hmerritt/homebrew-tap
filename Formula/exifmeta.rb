class Exifmeta < Formula
  desc "EXIF read/write/remove tool — useful for film photographers"
  homepage "https://github.com/hmerritt/exifmeta"
  version "1.3.0"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/hmerritt/exifmeta/releases/download/1.3.0/exifmeta-1.3.0-macos-arm64-apple-silicon.zip"
    sha256 "e5974212d41712ad71a5f7cb972a45891f000e5eaf1e680c12fcc6d942945f48"
  end

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/hmerritt/exifmeta/releases/download/1.3.0/exifmeta-1.3.0-macos-amd64-intel.zip"
    sha256 "84c6839f583016e9626d9681bbd2d352408977250e37cce3d705f21ef190d6ff"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://github.com/hmerritt/exifmeta/releases/download/1.3.0/exifmeta-1.3.0-linux-arm64.zip"
    sha256 "2fd23b7875debc236c29882c72beb10c7042e83763ea6bdf1375664bff85b7c2"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/hmerritt/exifmeta/releases/download/1.3.0/exifmeta-1.3.0-linux-amd64.zip"
    sha256 "ae813afbb137499d2713831942ff65183fdf5ba47fac1bea52effe20dc5c7a8b"
  end

  def install
    bin.install "exifmeta"
  end
end
