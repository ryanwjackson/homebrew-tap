class Gtr < Formula
    desc "Git worktree helper"
    homepage "https://github.com/ryanwjackson/gtr"
    url "https://github.com/ryanwjackson/gtr/archive/refs/tags/v0.1.0.tar.gz"
    sha256 "f1a8f4c7a49e99ad82c3da0749e62afb240f935785a8f869d0a821cfcf5b94f1"
    license "MIT"
    head "https://github.com/ryanwjackson/gtr.git", branch: "main"
  
    # pure script — relocatable
    bottle :unneeded # (Deprecated in core, but in taps it’s fine; or skip bottle block)
    # Alternatively (newer style):
    # def install
    #   bin.install "bin/gtr"
    # end
  
    def install
      # Install the script
      bin.install "bin/gtr"
  
      # Optional: completions/man
      # zsh_completion.install "completions/zsh/_gtr"
      # man1.install "man/gtr.1"
    end
  
    test do
      # Minimal smoke test
      assert_match "gtr - Git worktree helper", shell_output("#{bin}/gtr --help")
    end
  end