class AiUsage < Formula
  desc "Track AI subscription usage across Claude, ChatGPT, and GitHub Copilot"
  homepage "https://github.com/ebrainte/ai-usage"
  version "0.3.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ebrainte/ai-usage/releases/download/v0.3.0/ai-usage-darwin-arm64"
      sha256 "39fe67cd513e63770b5f73a7022a2f14a778aabd122bb98ebf09c66076ece923"
    end
  end

  def install
    bin.install Dir["ai-usage-darwin-*"].first => "ai-usage"
  end

  test do
    assert_match "usage", shell_output("#{bin}/ai-usage --help")
  end
end
