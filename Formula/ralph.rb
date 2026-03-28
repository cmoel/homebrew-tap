class Ralph < Formula
  desc "A TUI for running Ralph loops"
  homepage "https://github.com/cmoel/ralph"
  version "1.6.0"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/cmoel/ralph/releases/download/v1.6.0/ralph-1.6.0-aarch64-apple-darwin.tar.gz"
    sha256 "0f0bbff085f84ccbcd8aa4c61d720a3452c7cb29cabfd5e9e1fd8b103c2081c0"
  end
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/cmoel/ralph/releases/download/v1.6.0/ralph-1.6.0-x86_64-apple-darwin.tar.gz"
    sha256 "85147c6fbbde7a8745d9a72b70dd021444669ac71d3729b5575b72221d2bf06f"
  end
  if OS.linux? && Hardware::CPU.arm?
    url "https://github.com/cmoel/ralph/releases/download/v1.6.0/ralph-1.6.0-aarch64-unknown-linux-musl.tar.gz"
    sha256 "92637e4241dc4a9f02e41204572e0a810c903904464496c55753322b919c3788"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/cmoel/ralph/releases/download/v1.6.0/ralph-1.6.0-x86_64-unknown-linux-musl.tar.gz"
    sha256 "a93416563fd4c45dfc15be3ca8a43419ebadffecccd133c9f9bbcae90050a497"
  end

  def install
    bin.install "ralph"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/ralph --version")
  end
end
