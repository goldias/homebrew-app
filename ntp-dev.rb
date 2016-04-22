require "formula"

class NtpDev < Formula
  url "http://www.eecis.udel.edu/~ntp/ntp_spool/ntp4/ntp-4.2/ntp-4.2.8p6.tar.gz"
  version "4.2.8p6"
  homepage "http://www.ntp.org/"
  sha256 "583d0e1c573ace30a9c6afbea0fc52cae9c8c916dbc15c026e485a0dda4ba048"

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
