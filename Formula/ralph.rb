class Ralph < Formula
  desc "A TUI for running Ralph loops"
  homepage "https://github.com/cmoel/ralph"
  version "1.4.0"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/cmoel/ralph/releases/download/v1.4.0/ralph-1.4.0-aarch64-apple-darwin.tar.gz"
    sha256 "440aaa88d33e4b1d53b260d51d66fa6eb391545654220f5e99df32418569bc3a"
  end
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/cmoel/ralph/releases/download/v1.4.0/ralph-1.4.0-x86_64-apple-darwin.tar.gz"
    sha256 "e3b2910be831ca7f8a8a7defcdac7112fbf36967e0107a49c96e68b47eae1128"
  end
  if OS.linux? && Hardware::CPU.arm?
    url "https://github.com/cmoel/ralph/releases/download/v1.4.0/ralph-1.4.0-aarch64-unknown-linux-musl.tar.gz"
    sha256 "1c864eed54f1081e47e670b9b3b9480d53bed372461a0dbfcca412f9d346c3cd"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/cmoel/ralph/releases/download/v1.4.0/ralph-1.4.0-x86_64-unknown-linux-musl.tar.gz"
    sha256 "891e15eae919be1d96afc38cb9461ff221f4f96b524892114ce7285f12f4372d"
  end

  def install
    bin.install "ralph"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/ralph --version")
  end
end
