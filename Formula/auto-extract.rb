class AutoExtract < Formula
  desc "Watches your Downloads directory (or any directory) for ZIPs and archives and automatically extracts them for you"
  homepage "https://gitlab.com/mrrttjd/auto-extract"
  version "1.2.97"

  if OS.mac? && Hardware::CPU.arm?
    url "https://releases.mrrtt.me/auto-extract/v1.2.97/auto-extract_1.2.97_darwin_arm64.zip"
    sha256 "93639c3bd692ecda7e97a436e2aee877743caf5d88d805bb68509a449a011397"
  end

  if OS.mac? && Hardware::CPU.intel?
    url "https://releases.mrrtt.me/auto-extract/v1.2.97/auto-extract_1.2.97_darwin_amd64.zip"
    sha256 "57f7b7c999e87012ce0d9245128cfc33f2eaa613202f9703b4a7b145dba46e93"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://releases.mrrtt.me/auto-extract/v1.2.97/auto-extract_1.2.97_linux_arm64.zip"
    sha256 "0887adaca8cc0adf2ae460a3c255bfe72b30b716b0fdfe23e12dfb0ace4c0229"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://releases.mrrtt.me/auto-extract/v1.2.97/auto-extract_1.2.97_linux_amd64.zip"
    sha256 "5161c5db02eb14366b04ee46c24c2d1b69384cc1d2b6a24d6f7a639e0fccf579"
  end

  def install
    bin.install "auto-extract"
  end
end
