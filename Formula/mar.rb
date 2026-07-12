class Mar < Formula
  desc "Local-first project memory: Markdown docs + kanban tasks"
  homepage "https://github.com/statikowsky/mar"
  version "0.5.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/statikowsky/mar/releases/download/v0.5.0/mar_darwin_arm64.tar.gz"
      sha256 "0f2d181cd4fde42ac59b52f9f6e367bfd6bbe4a96674639f7bbab10f6069f972"
    else
      url "https://github.com/statikowsky/mar/releases/download/v0.5.0/mar_darwin_amd64.tar.gz"
      sha256 "bb402dacc21e424c4f46319ae5cdf692774c2ffa1c5cbe88c40cb0fe5c419705"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/statikowsky/mar/releases/download/v0.5.0/mar_linux_arm64.tar.gz"
      sha256 "c05bde62cb6ef49eaa30de7fab839b7d05e670b1c9c0c850ad6a440805c3fad2"
    else
      url "https://github.com/statikowsky/mar/releases/download/v0.5.0/mar_linux_amd64.tar.gz"
      sha256 "e7dce7a581a74f8947799886091ff266d843ec8b8631081e388f86349b945cef"
    end
  end

  def install
    bin.install "mar"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/mar version")
  end
end
