require 'formula'

class Stlink < Formula
    homepage 'https://github.com/texane/stlink'
    head 'https://github.com/texane/stlink.git', :revision => 'c84d8faf38e1d2069e84e0e86fe8ad3f054d36fd'

    depends_on 'pkg-config' => :build
    depends_on 'libusb'

    def install
        system "./autogen.sh"
        system "./configure"
        system "make install"
    end
end

