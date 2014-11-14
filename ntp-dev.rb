require "formula"

class NtpDev < Formula
  url "http://www.eecis.udel.edu/~ntp/ntp_spool/ntp4/ntp-dev/ntp-dev-4.2.7p478.tar.gz"
  version "4.2.7p478"
  homepage "http://www.ntp.org/"
  sha1 "0a3fc383b5d951403646b3f9a30ca827224883c8"

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
