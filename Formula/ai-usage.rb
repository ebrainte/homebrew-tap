class AiUsage < Formula
  desc "Track AI subscription usage across Claude, ChatGPT, and GitHub Copilot"
  homepage "https://github.com/ebrainte/ai-usage"
  version "0.2.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ebrainte/ai-usage/releases/download/v0.2.1/ai-usage-darwin-arm64"
      sha256 "5575e5bc6d825b6fa4db3ab01fab9b1e49cf6ca0cc4b385541bf05a8ba30516a"
    end
  end

  def install
    bin.install Dir["ai-usage-darwin-*"].first => "ai-usage"
  end

  test do
    assert_match "usage", shell_output("#{bin}/ai-usage --help")
  end
end
