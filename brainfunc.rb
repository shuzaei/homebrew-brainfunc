#
#   Copyright 2021 shuzaei
#
#   Contact: shuzaei@gmail.com
#   URL: https://github.com/shuzaei/homebrew-brainfunc/
#
#
# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class Brainfunc < Formula
  desc "A programming language like brainf*ck."
  homepage "https://www.github.com/shuzaei/brainfunc"
  url "https://github.com/shuzaei/brainfunc/releases/download/1.0.3-2/homebrew-package.tar.gz"
  version "1.0.3-2"
  sha256 "f2857c5bcbca024c45adff01cc60806b6c1f962c2d139e31ed6a0149dea883a6"
  license "GNU GPL v3.0"

  depends_on "mktemp"
  depends_on "cc"

  def install
    # ENV.deparallelize  # if your formula fails when building in parallel
    # Remove unrecognized options if warned by configure
    # https://rubydoc.brew.sh/Formula.html#std_configure_args-instance_method
    bin.install "bcc.sh" => "bcc"
    system "./install"
  end

  test do
    # `test do` will create, run in and delete a temporary directory.
    #
    # This test will fail and we won't accept that! For Homebrew/homebrew-core
    # this will need to be a test that verifies the functionality of the
    # software. Run the test with `brew test brainfunc`. Options passed
    # to `brew install` such as `--HEAD` also need to be provided to `brew test`.
    #
    # The installed folder is not in the path, so use the entire path to any
    # executables being tested: `system "#{bin}/program", "do", "something"`.
    system "false"
  end
end
