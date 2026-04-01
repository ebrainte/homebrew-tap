class AiUsage < Formula
  desc "Track AI subscription usage across Claude, ChatGPT, and GitHub Copilot"
  homepage "https://github.com/ebrainte/ai-usage"
  url "https://github.com/ebrainte/ai-usage/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "PLACEHOLDER"
  license "MIT"

  depends_on "python@3.12"

  def install
    venv = virtualenv_create(libexec, "python3.12")
    venv.pip_install buildpath
    bin.install_symlink libexec/"bin/ai-usage"
  end

  test do
    assert_match "usage", shell_output("#{bin}/ai-usage --help")
  end
end
