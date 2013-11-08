require 'formula'

# This is a binary-only formula.
class GccArmEmbedded < Formula
    homepage 'http://launchpad.net/gcc-arm-embedded'
    url 'https://launchpad.net/gcc-arm-embedded/4.7/4.7-2013-q3-update/+download/gcc-arm-none-eabi-4_7-2013q3-20130916-mac.tar.bz2'
    sha1 'a29eda3d4351bfe47749a242f6faa7cbd630d28b'
    version '4.7-2013-q3-update'

    def install
        bin.install Dir['bin/*']
    end

    def caveats
        <<-EOS.undent
        The relevant gcc-arm-embedded toolchain binaries have been installed and linked system-wide; remember that include files and libraries have not been exposed system wide.
        EOS
    end
end
