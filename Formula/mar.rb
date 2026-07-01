class Mar < Formula
  desc "Local-first project memory: Markdown docs + kanban tasks"
  homepage "https://github.com/statikowsky/mar"
  version "0.3.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/statikowsky/mar/releases/download/v0.3.0/mar_darwin_arm64.tar.gz"
      sha256 "5aad50bf41a09e96c63ad1c2c84db7306f760abf3eb63f7994c629375bfc932b"
    else
      url "https://github.com/statikowsky/mar/releases/download/v0.3.0/mar_darwin_amd64.tar.gz"
      sha256 "e8ef2068b8133b6a4af7e7c78f374e7e5369c5fa69f12b80912876a2bb5ae757"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/statikowsky/mar/releases/download/v0.3.0/mar_linux_arm64.tar.gz"
      sha256 "66a5959b76a4416aca77e28648e0556f532ae03d67a4f32f38cdc382d181878a"
    else
      url "https://github.com/statikowsky/mar/releases/download/v0.3.0/mar_linux_amd64.tar.gz"
      sha256 "d489c40fcb6205a712d05925dfa78959382b5791a6737de47e97f653b4bc6a55"
    end
  end

  def install
    bin.install "mar"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/mar version")
  end
end
