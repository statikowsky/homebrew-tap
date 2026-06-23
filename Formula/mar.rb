class Mar < Formula
  desc "Local-first docs and tasks for you and your agents"
  homepage "https://github.com/statikowsky/mar"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/statikowsky/mar/releases/download/v0.1.0/mar_darwin_arm64.tar.gz"
      sha256 "204f25c65793bfcbb4552105d6bf6fc55ce2dc4e78a29038f470516edbf24605"
    end
    on_intel do
      url "https://github.com/statikowsky/mar/releases/download/v0.1.0/mar_darwin_amd64.tar.gz"
      sha256 "40d57e61fb1d33c367851797f20bdabb06bad46ed8d5aec7318a677f7165ed89"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/statikowsky/mar/releases/download/v0.1.0/mar_linux_amd64.tar.gz"
      sha256 "f592f616f28c6c9f3bd1bbb85462849e0aa221ce3535b256b3aef4436cf827d0"
    end
    on_arm do
      url "https://github.com/statikowsky/mar/releases/download/v0.1.0/mar_linux_arm64.tar.gz"
      sha256 "be4bd3f96c62edad5a88828ceb841ee590815fe1a4dc5d639ef6bffaf4ab46b2"
    end
  end

  def install
    bin.install "mar"
  end

  test do
    assert_match "mar v#{version}", shell_output("#{bin}/mar version")
  end
end
