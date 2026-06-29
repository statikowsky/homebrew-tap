class Mar < Formula
  desc "Local-first project memory: Markdown docs + kanban tasks"
  homepage "https://github.com/statikowsky/mar"
  version "0.2.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/statikowsky/mar/releases/download/v0.2.0/mar_darwin_arm64.tar.gz"
      sha256 "18fcd9623813eb9efc8b50a672ba6f13e37c4c03b9bbf9c6cc8a34da6f43a19e"
    else
      url "https://github.com/statikowsky/mar/releases/download/v0.2.0/mar_darwin_amd64.tar.gz"
      sha256 "3f7f812dbf64452afb7545d717dd1635d2a20de09b2f0f4cca9156a5fe6c9fdc"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/statikowsky/mar/releases/download/v0.2.0/mar_linux_arm64.tar.gz"
      sha256 "54fa382b7075c48a0a488b6f7c35c94c0cf525fbfd9fb87e2075f042383f131f"
    else
      url "https://github.com/statikowsky/mar/releases/download/v0.2.0/mar_linux_amd64.tar.gz"
      sha256 "89983d2c311d7cd5dcf2ddcc21a413595cdf3caa91f92e1f05de95e62d23f5af"
    end
  end

  def install
    bin.install "mar"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/mar version")
  end
end
