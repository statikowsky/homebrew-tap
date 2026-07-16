class Mar < Formula
  desc "Local-first project memory: Markdown docs + kanban tasks"
  homepage "https://github.com/statikowsky/mar"
  version "0.5.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/statikowsky/mar/releases/download/v0.5.3/mar_darwin_arm64.tar.gz"
      sha256 "543ff29acbafeaeff8f874976fee52d175b11f1dc82b489e85225692e03fc2d1"
    else
      url "https://github.com/statikowsky/mar/releases/download/v0.5.3/mar_darwin_amd64.tar.gz"
      sha256 "84cea4fbea821fa2da6df5b57d0c016a85923051477ce2b156e52f79f3c5c583"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/statikowsky/mar/releases/download/v0.5.3/mar_linux_arm64.tar.gz"
      sha256 "00d4249518a33bae8ce14aef9deb600c6a70f1092e3047c3dfe1e6add98ade6e"
    else
      url "https://github.com/statikowsky/mar/releases/download/v0.5.3/mar_linux_amd64.tar.gz"
      sha256 "307021f11be5bb34ee5242123b6f0fb40b20ef4510aa548c65c2c054332c7b57"
    end
  end

  def install
    bin.install "mar"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/mar version")
  end
end
