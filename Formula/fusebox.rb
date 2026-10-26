class Fusebox < Formula
  desc "On-demand MCP servers and Skills for Claude Code, Codex and other AI agents"
  homepage "https://github.com/risingjerry/fusebox"
  url "https://github.com/risingjerry/fusebox/releases/download/v0.4.0/fusebox-0.4.0-macos-universal.tar.gz"
  version "0.4.0"
  sha256 "b4a00f8d730718aceaf132983845db3850e192265f3e7b7dc6eb1d4565f2cf17"
  license "MIT"

  depends_on :macos

  def install
    bin.install "fusebox"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fusebox --version")
  end
end
