# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Taskpoet < Formula
  desc "Alternative to the awesome TaskWarrior, but in Go, with some additional stuff I find useful"
  homepage "https://github.com/drewstinnett/taskpoet"
  version "0.0.6"
  license "BSD-2-Clause"
  bottle :unneeded

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/drewstinnett/taskpoet/releases/download/v0.0.6/taskpoet-0.0.6_macOS_amd64.tar.gz"
      sha256 "027450d4d1c49962006a7c95dfcff24b057e6ac754189dc9087d977001088781"
    end
    if Hardware::CPU.arm?
      url "https://github.com/drewstinnett/taskpoet/releases/download/v0.0.6/taskpoet-0.0.6_macOS_arm64.tar.gz"
      sha256 "0dbfa29ee3807affe8fd085f6734dea1482bca80b72298103723996d74462a45"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/drewstinnett/taskpoet/releases/download/v0.0.6/taskpoet-0.0.6_linux_amd64.tar.gz"
      sha256 "3fc89e16db008673a45e474d05474656bbedc718135aafda936a41646a505ef5"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/drewstinnett/taskpoet/releases/download/v0.0.6/taskpoet-0.0.6_linux_arm64.tar.gz"
      sha256 "fe20f58203005473266ac2b380771cb38c5aaba5c9bbd327766488e13f9afac3"
    end
  end

  def install
    bin.install "taskpoet"
  end

  def caveats; <<~EOS
    Add the following in your ~/.zshrc or ~/.profile for faster typin':

      alias tp="#{opt_bin}/taskpoet"
  EOS
  end
end
