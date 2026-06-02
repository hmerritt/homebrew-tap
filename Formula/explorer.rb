class Explorer < Formula
  desc "File Explorer"
  homepage "https://github.com/hmerritt/explorer"
  version "0.2.0"

  if OS.mac? && Hardware::CPU.arm?
    url "https://releases.mrrtt.me/explorer/0.2.0/explorer-0.2.0-macos-arm64-apple-silicon.zip"
    sha256 "7787cfea344300ed318139d409a8948432e3e8100f32fa8cc96fc214b5677e8e"
  end

  if OS.mac? && Hardware::CPU.intel?
    url "https://releases.mrrtt.me/explorer/0.2.0/explorer-0.2.0-macos-amd64-intel.zip"
    sha256 "4442916499ad85ffae8678ea2d85e68179b761b3248cb14f80da9d05d96b41b0"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://releases.mrrtt.me/explorer/0.2.0/explorer-0.2.0-linux-arm64.zip"
    sha256 "f085cfaa60775edf76cee46192bacf08634aabf9c6989dc7e05ec8f599095c25"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://releases.mrrtt.me/explorer/0.2.0/explorer-0.2.0-linux-amd64.zip"
    sha256 "d46acc85821a3f536fd1e21a2c4801f2a33dcce0ab73663ef39c725c70ef2071"
  end

  def install
    bin.install "explorer"
  end
end
