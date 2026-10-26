# Homebrew formula for dateblock (macOS and Linux).
class Dateblock < Formula
  desc "Block (sleep) until a cron-style moment in time"
  homepage "https://github.com/caronc/dateblock"
  url "https://github.com/caronc/dateblock/archive/refs/tags/v2.0.0.tar.gz"
  sha256 "5f3bdd4a1e96279e6a622e8f4f22cc22fa7dc276a246b6b39cd679f7eec5fa99"
  license "GPL-2.0-or-later"
  head "https://github.com/caronc/dateblock.git", branch: "master"

  depends_on "autoconf" => :build
  depends_on "automake" => :build
  depends_on "libtool" => :build

  def install
    system "./autogen.sh"
    system "./configure", "--disable-static", *std_configure_args
    system "make", "install"
  end

  test do
    # --test shows when it would unblock, without waiting
    assert_match "Block Until", shell_output("#{bin}/dateblock -t -n 5")

    # A command after the options runs once the time is reached, and its
    # exit code becomes dateblock's
    shell_output("#{bin}/dateblock -s /1 -- sh -c 'exit 7'", 7)
  end
end
