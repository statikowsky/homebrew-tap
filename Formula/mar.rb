class Mar < Formula
  desc "Local-first project memory: Markdown docs + kanban tasks"
  homepage "https://github.com/statikowsky/mar"
  version "0.4.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/statikowsky/mar/releases/download/v0.4.0/mar_darwin_arm64.tar.gz"
      sha256 "5f40fc3b7bfab689896b4d47822e8061816ae1924b18e21e53f2dd6e39e99146"
    else
      url "https://github.com/statikowsky/mar/releases/download/v0.4.0/mar_darwin_amd64.tar.gz"
      sha256 "e2a551ad851716d942d78bd25b6a87da73c4830daf420e8f25c4c9e929b891ed"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/statikowsky/mar/releases/download/v0.4.0/mar_linux_arm64.tar.gz"
      sha256 "bc46c55d63d4d84bfea8f8f4ad6da4d7107486dc6cc9067c19a8fedc2fe118db"
    else
      url "https://github.com/statikowsky/mar/releases/download/v0.4.0/mar_linux_amd64.tar.gz"
      sha256 "bd390fcc9cc41fb4c72060b5d37bc3c4e413470b9b68cfec4cbc6eccf92d4249"
    end
  end

  def install
    bin.install "mar"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/mar version")
  end
end
