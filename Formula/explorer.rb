class Explorer < Formula
  desc "File Explorer"
  homepage "https://github.com/hmerritt/explorer"
  version "0.1.0"

  if OS.mac? && Hardware::CPU.arm?
    url "https://releases.mrrtt.me/explorer/0.1.0/explorer-0.1.0-macos-arm64-apple-silicon.zip"
    sha256 "6a8bac82bba2e1620436f2069a4b943169b24bc1ae19b2e9c2b9af2873fe152f"
  end

  if OS.mac? && Hardware::CPU.intel?
    url "https://releases.mrrtt.me/explorer/0.1.0/explorer-0.1.0-macos-amd64-intel.zip"
    sha256 "e90d5100319e8d4b820c62e1eb7a7665daacc98e461f56e7ff10bd3b053f3650"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://releases.mrrtt.me/explorer/0.1.0/explorer-0.1.0-linux-arm64.zip"
    sha256 "90aa75a515c4a188f98cf0e46af7b79c2579fa759fd90f76446441afd04787c5"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://releases.mrrtt.me/explorer/0.1.0/explorer-0.1.0-linux-amd64.zip"
    sha256 "5a7f5d7fe3ba8c6de645c911fe28deb8e42bb12182ea0f69bd3dcbd31e25f9a1"
  end

  def install
    bin.install "explorer"
  end
end
