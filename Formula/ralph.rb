class Ralph < Formula
  desc "A TUI for running Ralph loops"
  homepage "https://github.com/cmoel/ralph"
  version "1.3.0"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/cmoel/ralph/releases/download/v1.3.0/ralph-1.3.0-aarch64-apple-darwin.tar.gz"
    sha256 "4787f83d528ee0c6ff36ef2be7d4c29235df8d7d581ec29f1e9dad6bd0a83eb9"
  end
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/cmoel/ralph/releases/download/v1.3.0/ralph-1.3.0-x86_64-apple-darwin.tar.gz"
    sha256 "c6cec4e2c53e8da1f94ad233c2f709952de4a1ff8fbbd7420b634d1e3d3e1c85"
  end
  if OS.linux? && Hardware::CPU.arm?
    url "https://github.com/cmoel/ralph/releases/download/v1.3.0/ralph-1.3.0-aarch64-unknown-linux-musl.tar.gz"
    sha256 "98a4de3e34d59615d35754d5f3cd5cb152510d339e9e01efa98c30720a847088"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/cmoel/ralph/releases/download/v1.3.0/ralph-1.3.0-x86_64-unknown-linux-musl.tar.gz"
    sha256 "fd9f8050a406d4cd23984429fc1a12d09c830c7193429ff2715ac54f4f82d1a0"
  end

  def install
    bin.install "ralph"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/ralph --version")
  end
end
