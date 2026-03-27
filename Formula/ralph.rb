class Ralph < Formula
  desc "A TUI for running Ralph loops"
  homepage "https://github.com/cmoel/ralph"
  version "1.5.0"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/cmoel/ralph/releases/download/v1.5.0/ralph-1.5.0-aarch64-apple-darwin.tar.gz"
    sha256 "b28822c7ca4bf7d738bd798055607e9dbd7bd7153f23b7e49493ffc871766c87"
  end
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/cmoel/ralph/releases/download/v1.5.0/ralph-1.5.0-x86_64-apple-darwin.tar.gz"
    sha256 "40b4f23354d307f5dd706aedcb891d637dd50ea2d6c293e8d99148a723d6d2ba"
  end
  if OS.linux? && Hardware::CPU.arm?
    url "https://github.com/cmoel/ralph/releases/download/v1.5.0/ralph-1.5.0-aarch64-unknown-linux-musl.tar.gz"
    sha256 "92ffc69e0d9033564993ba90829d388ed65df451e9ae15a9d0c19b7614f76d34"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/cmoel/ralph/releases/download/v1.5.0/ralph-1.5.0-x86_64-unknown-linux-musl.tar.gz"
    sha256 "16f0644b77e0f7a4591b641278c209d9e5453f4294c2463162d7c249772a3cda"
  end

  def install
    bin.install "ralph"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/ralph --version")
  end
end
