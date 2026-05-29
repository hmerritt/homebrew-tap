class IcsToMarkdown < Formula
  desc "ICS->Markdown. Convert a calendar ICS file into a Markdown table"
  homepage "https://github.com/hmerritt/go-ics-to-markdown"
  version "0.5.10"

  # @TODO: Add this
  # if OS.mac? && Hardware::CPU.arm?
  #   url "https://releases.mrrtt.me/fspop/v1.3.250/fspop_1.3.250_darwin_arm64.zip"
  #   sha256 "4dc1d9499635c99c0829df23c23558ef633d744c4620b2b82638da47f325c4bb"
  # end

  if OS.mac? && Hardware::CPU.intel?
    url "https://releases.mrrtt.me/ics-to-markdown/v0.5.10/ics-to-markdown_0.5.10_darwin_amd64.zip"
    sha256 "89c062560a48cbebbc8d677e85ac70ac3d4044d241db70e785f0c8c7f983714d"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://releases.mrrtt.me/ics-to-markdown/v0.5.10/ics-to-markdown_0.5.10_linux_arm64.zip"
    sha256 "1995e73011d53c02cb7aef08aba048328b38ff577a07200e2fad57f709f7f6c5"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://releases.mrrtt.me/ics-to-markdown/v0.5.10/ics-to-markdown_0.5.10_linux_amd64.zip"
    sha256 "7f01137d58e3b4c4edfb8f716a906b2584c87ab7219655e646f6dba8780d5aa4"
  end

  def install
    bin.install "ics-to-markdown"
  end
end
