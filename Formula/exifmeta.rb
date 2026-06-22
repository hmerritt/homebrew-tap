class Exifmeta < Formula
  desc "EXIF read/write/remove tool — useful for film photographers"
  homepage "https://github.com/hmerritt/exifmeta"
  version "1.5.0"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/hmerritt/exifmeta/releases/download/1.5.0/exifmeta-1.5.0-macos-arm64-apple-silicon.zip"
    sha256 "e41a01319f68eae1c8b5fec6d0370c3d2d2c9a171fd19b2a44e1717b6e8abb0b"
  end

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/hmerritt/exifmeta/releases/download/1.5.0/exifmeta-1.5.0-macos-amd64-intel.zip"
    sha256 "c83b87aad8d1a5bdb1cb3ea8d2ac964b68af1da06552a066837a6b0b6e0e2f0f"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://github.com/hmerritt/exifmeta/releases/download/1.5.0/exifmeta-1.5.0-linux-arm64.zip"
    sha256 "dbae1c131b41d82e3e9835e6cbf5f32829c774404a133fd0275e0833b3ef50a2"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/hmerritt/exifmeta/releases/download/1.5.0/exifmeta-1.5.0-linux-amd64.zip"
    sha256 "8a95bc94ba6e135fb65dbb1a163b1d1b2de2dac3abefcf3a8debdb00a36a979d"
  end

  def install
    bin.install "exifmeta"
  end
end
