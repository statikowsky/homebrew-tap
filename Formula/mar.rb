class Mar < Formula
  desc "Local-first project memory: Markdown docs + kanban tasks"
  homepage "https://github.com/statikowsky/mar"
  version "0.1.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/statikowsky/mar/releases/download/v0.1.1/mar_darwin_arm64.tar.gz"
      sha256 "34205dd2d76ba48fd9c00420db534f15ce9107dd88311d6bfad52f4f529723d5"
    else
      url "https://github.com/statikowsky/mar/releases/download/v0.1.1/mar_darwin_amd64.tar.gz"
      sha256 "4a3a18344aa881b06e150e6b2ad198356b45a2b4dd4fe1642408b7f7781078ee"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/statikowsky/mar/releases/download/v0.1.1/mar_linux_arm64.tar.gz"
      sha256 "604b3ea26516daa81ec036a6354b7d0503ae2d4d865e8ddef58112f5797727b7"
    else
      url "https://github.com/statikowsky/mar/releases/download/v0.1.1/mar_linux_amd64.tar.gz"
      sha256 "f3acc438de7fd8a037d17560abc99c896939657a28f0bb340347ed30ab7746c4"
    end
  end

  def install
    bin.install "mar"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/mar version")
  end
end
