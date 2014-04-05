require "formula"

class NtpDev < Formula
  url "http://www.eecis.udel.edu/~ntp/ntp_spool/ntp4/ntp-dev/ntp-dev-4.2.7p439.tar.gz"
  version "4.2.7p439"
  homepage "http://www.ntp.org/"
  sha1 "35448de8085fd1f63d4c518101313f6e6a94b522"

  def install
    system "./configure", "--prefix=#{prefix}"
    system "make", "install"
  end
end
