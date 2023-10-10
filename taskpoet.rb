# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Taskpoet < Formula
  desc "Alternative to the awesome TaskWarrior, but in Go, with some additional stuff I find useful"
  homepage "https://github.com/drewstinnett/taskpoet"
  version "0.2.2"
  license "BSD-2-Clause"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/drewstinnett/taskpoet/releases/download/v0.2.2/taskpoet-0.2.2_darwin_arm64.tar.gz"
      sha256 "8fa3ec1c4ecb9b10e27410d63154303d80e2cbeebfdb8ec35cd46b1e91b21772"

      def install
        bin.install "taskpoet"
        bash_completion.install "completions/taskpoet.bash" => "taskpoet"
        zsh_completion.install "completions/taskpoet.zsh" => "_taskpoet"
        fish_completion.install "completions/taskpoet.fish"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/drewstinnett/taskpoet/releases/download/v0.2.2/taskpoet-0.2.2_darwin_amd64.tar.gz"
      sha256 "787d888eb4753a5164f6653eff6f69cb08bbac9a85be90260c3a3b1e6d818066"

      def install
        bin.install "taskpoet"
        bash_completion.install "completions/taskpoet.bash" => "taskpoet"
        zsh_completion.install "completions/taskpoet.zsh" => "_taskpoet"
        fish_completion.install "completions/taskpoet.fish"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/drewstinnett/taskpoet/releases/download/v0.2.2/taskpoet-0.2.2_linux_arm64.tar.gz"
      sha256 "30e313b75ce89305afede461da07fb761765602affec40cc292dc4b0a547bf00"

      def install
        bin.install "taskpoet"
        bash_completion.install "completions/taskpoet.bash" => "taskpoet"
        zsh_completion.install "completions/taskpoet.zsh" => "_taskpoet"
        fish_completion.install "completions/taskpoet.fish"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/drewstinnett/taskpoet/releases/download/v0.2.2/taskpoet-0.2.2_linux_amd64.tar.gz"
      sha256 "a1e02036560c434fc3c3bc9eb30e071bc6fa19b98ab949f8530e5d434d4abfa2"

      def install
        bin.install "taskpoet"
        bash_completion.install "completions/taskpoet.bash" => "taskpoet"
        zsh_completion.install "completions/taskpoet.zsh" => "_taskpoet"
        fish_completion.install "completions/taskpoet.fish"
      end
    end
  end

  def caveats
    <<~EOS
      Add the following in your ~/.zshrc or ~/.profile for faster typin':

        alias tp="#{opt_bin}/taskpoet"
    EOS
  end
end
