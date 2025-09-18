class Gtr < Formula
  desc "Git worktree helper"
  homepage "https://github.com/ryanwjackson/gtr"
  url "https://github.com/ryanwjackson/gtr/releases/download/v0.1.4/gtr-v0.1.4.tar.gz"
  sha256 "c1822cfa9d6e60e40c927d0e593ccfa53b76f67e8b967da39bb067dad6903d2f"
  license "MIT"
  head "https://github.com/ryanwjackson/gtr.git", branch: "main"

  def install
    bin.install "bin/gtr"
    man1.install "man/man1/gtr.1" if File.exist?("man/man1/gtr.1")
    zsh_completion.install "completions/_gtr" if File.exist?("completions/_gtr")
    bash_completion.install "completions/gtr.bash" if File.exist?("completions/gtr.bash")
    fish_completion.install "completions/gtr.fish" if File.exist?("completions/gtr.fish")
  end

  test do
    assert_match "gtr", shell_output("#{bin}/gtr --help")
  end
end
