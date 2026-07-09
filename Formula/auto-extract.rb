class AutoExtract < Formula
  desc "Watches your Downloads directory (or any directory) for ZIPs and archives and automatically extracts them for you"
  homepage "https://gitlab.com/mrrttjd/auto-extract"
  version "1.2.90"

  if OS.mac? && Hardware::CPU.arm?
    url "https://releases.mrrtt.me/auto-extract/v1.2.90/auto-extract_1.2.90_darwin_arm64.zip"
    sha256 "133410699d8b633e3d79a9fb16b5a3aaa89943c41337505ddc5a6456e1b45f5c"
  end

  if OS.mac? && Hardware::CPU.intel?
    url "https://releases.mrrtt.me/auto-extract/v1.2.90/auto-extract_1.2.90_darwin_amd64.zip"
    sha256 "2756b732697352026d2e301d1a03655d679a8e6f4d2280fb1eef22bb335cb6c4"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://releases.mrrtt.me/auto-extract/v1.2.90/auto-extract_1.2.90_linux_arm64.zip"
    sha256 "61a16196e82e98437d14925dbbbc3aed02a869fcde33d77aeef887bb5a230fec"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://releases.mrrtt.me/auto-extract/v1.2.90/auto-extract_1.2.90_linux_amd64.zip"
    sha256 "9dbda60c67a4b23dbb1311e6c320a2c78f30e4f3333fd4736c3f33d55c56a31a"
  end

  def install
    bin.install "auto-extract"
  end
end
