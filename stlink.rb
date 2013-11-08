require 'formula'

class Stlink < Formula
    homepage 'https://github.com/texane/stlink'
    head 'https://github.com/texane/stlink.git'

    depends_on 'pkg-config' => :build
    depends_on 'libusb'

    def install
        system "./autogen.sh"
        system "./configure"
        system "make install"
    end
end

