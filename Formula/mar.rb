class Mar < Formula
  desc "Local-first project memory: Markdown docs + kanban tasks"
  homepage "https://github.com/statikowsky/mar"
  version "0.5.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/statikowsky/mar/releases/download/v0.5.2/mar_darwin_arm64.tar.gz"
      sha256 "cc4383d830000602b780fdd35d9019a7200895c3d147ed975107f72479460417"
    else
      url "https://github.com/statikowsky/mar/releases/download/v0.5.2/mar_darwin_amd64.tar.gz"
      sha256 "994c63de782cbee4e6f603ff5a803c7c87daff14b4d41c3f760088b7facbd2f4"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/statikowsky/mar/releases/download/v0.5.2/mar_linux_arm64.tar.gz"
      sha256 "2445432feea7fda00e711747875eae4049c82a88da3a1f07b35f282f3c35cde5"
    else
      url "https://github.com/statikowsky/mar/releases/download/v0.5.2/mar_linux_amd64.tar.gz"
      sha256 "a87c52f02bdd22965b31d49e98750f7252a02b7fbb76c7462d67349b0f6ab23e"
    end
  end

  def install
    bin.install "mar"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/mar version")
  end
end
