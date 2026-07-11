class Aura < Formula
  release_version = "1.2.0"
  release_sha256 = "64748dc1d4e1c748cbf0f5aade2c7c771ec86368b4ac6e210ff524a5c49fcd2b"
  base_url = "https://github.com/hmerritt/aura/releases/download"

  name "aura"
  desc "Wallpaper manager with image rotation and live Metal shaders"
  homepage "https://github.com/hmerritt/aura"

  version release_version
  sha256 release_sha256
  url "#{base_url}/#{release_version}/aura-macos-arm64.tar.gz"

  depends_on arch: :arm64
  depends_on macos: :sonoma

  def install
    bin.install "Aura.app/Contents/MacOS/aura"
  end

  service do
    run [opt_bin/"aura"]
    keep_alive true
    process_type :interactive
    log_path var/"log/aura.log"
    error_log_path var/"log/aura.log"
  end

  test do
    assert_match "Version #{release_version}", shell_output("#{bin}/aura --version")
  end
end
