class AiUsage < Formula
  desc "Track AI subscription usage across Claude, ChatGPT, and GitHub Copilot"
  homepage "https://github.com/ebrainte/ai-usage"
  version "0.2.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ebrainte/ai-usage/releases/download/v0.2.0/ai-usage-darwin-arm64"
      sha256 "c1ac1222938e4a5bd0fef4948dab02a58feb71b437a43c399b2f1de14898e418"
    end
  end

  def install
    bin.install Dir["ai-usage-darwin-*"].first => "ai-usage"
  end

  test do
    assert_match "usage", shell_output("#{bin}/ai-usage --help")
  end
end
