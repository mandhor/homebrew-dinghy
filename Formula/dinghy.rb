class Dinghy < Formula
  desc "faster, friendlier Docker on OS X"
  homepage "https://github.com/mandhor/dinghy"
  url "https://github.com/mandhor/dinghy.git", :tag => "4.2.0.x", :revision => "ad7aab0b494d02bfb86759c593c2cb9f5e5ba1e6"
  head "https://github.com/mandhor/dinghy.git", :branch => :master

  depends_on "unfs3"
  depends_on "dnsmasq"

  def install
    bin.install "bin/dinghy"
    bin.install "bin/_dinghy_command"
    prefix.install "cli"
  end

  def caveats; <<-EOS.undent
    Run `dinghy create` to create the VM, then `dinghy up` to bring up the VM and services.
    EOS
  end

  test do
    system "dinghy", "version"
  end
end
