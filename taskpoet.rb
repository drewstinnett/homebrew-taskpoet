class Taskpoet < Formula
  desc "Alternative to the awesome TaskWarrior, but in Go, with some additional stuff I find useful"
  homepage "https://github.com/drewstinnett/taskpoet"
  url "https://github.com/drewstinnett/taskpoet/releases/download/v0.0.1/taskpoet-0.0.1_macOS_amd64.tar.gz"
  sha256 "b38f9716e7594eeef5008a279251c180744e81381c04b3dcda20d7b493147298"
  license "BSD-2-Clause"

  def install
    bin.install 'taskpoet'
  end
end
