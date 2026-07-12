class Mar < Formula
  desc "Local-first project memory: Markdown docs + kanban tasks"
  homepage "https://github.com/statikowsky/mar"
  version "0.5.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/statikowsky/mar/releases/download/v0.5.1/mar_darwin_arm64.tar.gz"
      sha256 "2cf808d584b0f22d0c02b1d06a6b73c2ca44e388a0b5ccc08eed76f937478eff"
    else
      url "https://github.com/statikowsky/mar/releases/download/v0.5.1/mar_darwin_amd64.tar.gz"
      sha256 "fadfc8c957e96c7376853fd6f40c01ab3ce86ee024e5c9bf5a31353cc2ca3b73"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/statikowsky/mar/releases/download/v0.5.1/mar_linux_arm64.tar.gz"
      sha256 "8168f9c181bd91cb6867c66b6cd1b42fc8f2e0aba7916925f15240674c67ae53"
    else
      url "https://github.com/statikowsky/mar/releases/download/v0.5.1/mar_linux_amd64.tar.gz"
      sha256 "fed6693e5c81c3aa31e2014d36afa67d32bfa7c5f6c71121cecc44c16377ff2d"
    end
  end

  def install
    bin.install "mar"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/mar version")
  end
end
