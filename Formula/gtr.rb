class Gtr < Formula
  desc "Git worktree helper"
  homepage "https://github.com/ryanwjackson/gtr"
  url "https://github.com/ryanwjackson/gtr/releases/download/v0.1.14/gtr-v0.1.14.tar.gz"
  sha256 "03f6037925a59bd115fe668e4ad2ee5ec8c85ea67885b4e70b23009ed3dfce3e"
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
