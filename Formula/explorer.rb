class Explorer < Formula
  release_version = "0.3.0"
  base_url = "https://releases.mrrtt.me/explorer"

  desc "File Explorer"
  homepage "https://github.com/hmerritt/explorer"
  version release_version

  if OS.mac? && Hardware::CPU.arm?
    url "#{base_url}/#{release_version}/explorer-#{release_version}-macos-arm64-apple-silicon.zip"
    sha256 "ab4e660d1ce195acce880fd9408fc57fc79c901f021836f3c80d11afd3c62f66"
  end

  if OS.mac? && Hardware::CPU.intel?
    url "#{base_url}/#{release_version}/explorer-#{release_version}-macos-amd64-intel.zip"
    sha256 "869ff286a52dbd8fdfd47fc74bdfea478d8cdcf9b01f3a1c5c174883b8c38c06"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "#{base_url}/#{release_version}/explorer-#{release_version}-linux-arm64.tar.gz"
    sha256 "1ffdfc1b0877285bd84e831e97cab42caa770f8da97f6e9d823aeb04c6802e15"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "#{base_url}/#{release_version}/explorer-#{release_version}-linux-amd64.tar.gz"
    sha256 "cf65c742d9b79c2699e2438631f102e4c82f5fa597ef0375f24aa48c3a5b8401"
  end

  def install
    if OS.linux?
      if File.directory?("explorer.app")
        libexec.install "explorer.app"

        bin.write_exec_script libexec/"explorer.app/bin/explorer"

        (share/"applications").install libexec/"explorer.app/share/applications/com.hmerritt.explorer.desktop"
        (share/"icons/hicolor/512x512/apps").install libexec/"explorer.app/share/icons/hicolor/512x512/apps/explorer.png"

        inreplace share/"applications/com.hmerritt.explorer.desktop" do |s|
          s.gsub!(/^Exec=.*/, "Exec=#{bin}/explorer %F")
          s.gsub!(/^Icon=.*/, "Icon=#{share}/icons/hicolor/512x512/apps/explorer.png")
        end
      elsif File.exist?("explorer")
        bin.install "explorer"
        chmod 0755, bin/"explorer"
      else
        odie "Expected explorer.app or explorer in archive; found: #{Dir.children(".").sort.join(", ")}"
      end
    else
      bin.install "explorer"
      chmod 0755, bin/"explorer"

      if system "xattr", "-p", "com.apple.quarantine", bin/"explorer", out: File::NULL, err: File::NULL
        system "xattr", "-d", "com.apple.quarantine", bin/"explorer"
      end
    end
  end

  test do
    assert_predicate bin/"explorer", :exist?

    if OS.linux?
      assert_predicate libexec/"explorer.app/bin/explorer", :exist?
      assert_predicate libexec/"explorer.app/bin/explorer.bin", :exist?
      assert_predicate share/"applications/com.hmerritt.explorer.desktop", :exist?
      assert_predicate share/"icons/hicolor/512x512/apps/explorer.png", :exist?
    end
  end
end
