class AutoExtract < Formula
  desc "Watches your Downloads directory (or any directory) for ZIPs and archives and automatically extracts them for you"
  homepage "https://gitlab.com/mrrttjd/auto-extract"
  version "1.0.75"

  if OS.mac? && Hardware::CPU.arm?
    url "https://releases.mrrtt.me/auto-extract/v1.0.76/auto-extract_1.0.75_darwin_arm64.zip"
    sha256 "8b62a6becc581d317bc28294b1e659166f97267c79dbcc5dea004f007000e96f"
  end

  if OS.mac? && Hardware::CPU.intel?
    url "https://releases.mrrtt.me/auto-extract/v1.0.76/auto-extract_1.0.75_darwin_amd64.zip"
    sha256 "6fd7481f7d8812e6922df60b98b901e13e2468e35fa7f510bfb804f83edc9b6b"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://releases.mrrtt.me/auto-extract/v1.0.76/auto-extract_1.0.75_linux_arm64.zip"
    sha256 "ed68be5dc30bb19fe7caeb50590de959f29ed99066b0d8dd9c3494b65c297167"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://releases.mrrtt.me/auto-extract/v1.0.76/auto-extract_1.0.75_linux_amd64.zip"
    sha256 "e470e4ff3e30977eb5b1e52f43dd5935c41598aa3fc0a9e3f0f7b2ef97ac0e04"
  end

  def install
    bin.install "auto-extract"
  end
end
