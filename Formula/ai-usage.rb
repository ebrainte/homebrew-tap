class AiUsage < Formula
  include Language::Python::Virtualenv

  desc "Track AI subscription usage across Claude, ChatGPT, and GitHub Copilot"
  homepage "https://github.com/ebrainte/ai-usage"
  url "https://github.com/ebrainte/ai-usage/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "681382915efa0bd5f4890f3a0685339ceff7e027c39f57af5368711a26dc75f0"
  license "MIT"

  depends_on "python@3.12"

  def install
    virtualenv_create(libexec, "python3.12")
    system libexec/"bin/pip", "install", ".", "--prefix=#{libexec}"
    bin.install_symlink libexec/"bin/ai-usage"
  end

  test do
    assert_match "usage", shell_output("#{bin}/ai-usage --help")
  end
end
