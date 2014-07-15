require "formula"

class NtpDev < Formula
  url "http://www.eecis.udel.edu/~ntp/ntp_spool/ntp4/ntp-dev/ntp-dev-4.2.7p448.tar.gz"
  version "4.2.7p448"
  homepage "http://www.ntp.org/"
  sha1 "00b6cd2a1c78cfee9314d352d6fec8d8c1c723fc"

  def install
    system "./configure", "--prefix=#{prefix}"
    system "make", "install"
  end

  def caveats
    s = <<-EOS.undent
      1. make sure /usr/libexec/ntpd-wrapper calls `brew --prefix`/sbin/ntpd
         at the last 'exec' line.

      2. restart ntpd.
          $ sudo launchctl stop org.ntp.ntpd
    EOS
    s
  end
end
