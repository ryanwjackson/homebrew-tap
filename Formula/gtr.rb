class Gtr < Formula
  desc "Git worktree helper"
  homepage "https://github.com/ryanwjackson/gtr"
  url "https://github.com/ryanwjackson/gtr/releases/download/v0.7.7/gtr-v0.7.7.tar.gz"
  sha256 "fb1c9ad81be82d4baa62270b4d3c8e1e0d996988ba868cd9fc3dd7a51121db9a"
  license "MIT"
  head "https://github.com/ryanwjackson/gtr.git", branch: "main"

  def install
    bin.install "bin/gtr"
    lib.install Dir["lib/*.sh"]
    man1.install "man/man1/gtr.1" if File.exist?("man/man1/gtr.1")
    zsh_completion.install "completions/_gtr" if File.exist?("completions/_gtr")
    bash_completion.install "completions/gtr.bash" if File.exist?("completions/gtr.bash")
    fish_completion.install "completions/gtr.fish" if File.exist?("completions/gtr.fish")
  end

  test do
    assert_match "gtr", shell_output("#{bin}/gtr --help")
  end
end
