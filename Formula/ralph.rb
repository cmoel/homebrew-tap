class Ralph < Formula
  desc "A TUI for running Ralph loops"
  homepage "https://github.com/cmoel/ralph"
  version "2.0.0"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/cmoel/ralph/releases/download/v2.0.0/ralph-2.0.0-aarch64-apple-darwin.tar.gz"
    sha256 "cd5a81a264f64f792f83ff8c874762c7d549aee3efb72d0d926105c613cff84b"
  end
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/cmoel/ralph/releases/download/v2.0.0/ralph-2.0.0-x86_64-apple-darwin.tar.gz"
    sha256 "54d01cc4e3cdb2de106027e25a4f1bfe2f316c389d7b069d7918b15de51300ec"
  end
  if OS.linux? && Hardware::CPU.arm?
    url "https://github.com/cmoel/ralph/releases/download/v2.0.0/ralph-2.0.0-aarch64-unknown-linux-musl.tar.gz"
    sha256 "d18123c1007147ab0b697ede7eb620ae442186800f6eccc347471888a40fdad5"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/cmoel/ralph/releases/download/v2.0.0/ralph-2.0.0-x86_64-unknown-linux-musl.tar.gz"
    sha256 "3d48288c12d9c95691ab6e2a99a232cf12ddfba858a1031b7f483eafe52ec5b3"
  end

  def install
    bin.install "ralph"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/ralph --version")
  end
end
