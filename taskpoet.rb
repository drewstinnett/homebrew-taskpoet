class Taskpoet < Formula
  desc "Alternative to the awesome TaskWarrior, but in Go, with some additional stuff I find useful"
  homepage "https://github.com/drewstinnett/taskpoet"
  url "https://github.com/drewstinnett/taskpoet/releases/download/v0.0.2/taskpoet-0.0.2_macOS_amd64.tar.gz"
  sha256 "1b0cff7e5b01a85fcf1c9763e87a2584fae4e8be6b0a14e0fafe21eea21bb267"
  license "BSD-2-Clause"

  def install
    bin.install 'taskpoet'
  end

  def caveats
    <<~EOS
      Add the following in your ~/.zshrc or ~/.profile for faster typin':
  
        alias tp="#{opt_bin}/taskpoet"
    EOS
  end

end
