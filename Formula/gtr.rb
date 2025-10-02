class Gtr < Formula
  desc "Git worktree helper"
  homepage "https://github.com/ryanwjackson/gtr"
  url "https://github.com/ryanwjackson/gtr/releases/download/v0.6.0/gtr-v0.6.0.tar.gz"
  sha256 "71c7c775a94025b5d2c38619a217bbe908eb304bc3f5b370ba6f73e5cb9cba04"
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
