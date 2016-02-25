class Dinghy < Formula
  desc "faster, friendlier Docker on OS X"
  homepage "https://github.com/mandhor/dinghy"
  url "https://github.com/mandhor/dinghy.git", :tag => "4.2.0.x", :revision => "c904cf8e45b2e7f9e0361c43df9a9720e1c617ce"
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
