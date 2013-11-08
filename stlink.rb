require 'formula'

class Stlink < Formula
    homepage 'https://github.com/texane/stlink'
    head 'https://github.com/texane/stlink.git', :revision => 'd650c9854f999d83f40d3e8c38b988b730de6368'

    depends_on 'pkg-config' => :build
    depends_on 'libusb'

    def install
        system "./autogen.sh"
        system "./configure"
        system "make install"
    end
end

