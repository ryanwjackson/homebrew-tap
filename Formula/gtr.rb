class Gtr < Formula
  desc "Git worktree helper"
  homepage "https://github.com/ryanwjackson/gtr"
  url "https://github.com/ryanwjackson/gtr/releases/download/v0.3.10/gtr-v0.3.10.tar.gz"
  sha256 "a733520e10f872fd1f285fe1144738951b8a10ae5973bd38ad12dd58b7d02cd5"
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
