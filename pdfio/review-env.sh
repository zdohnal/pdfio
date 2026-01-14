
#
# This file is not needed for review, and is only used for the
# shell API plugin. No need to modify it or anything.
#

declare -f +x module
PATH=/bin:/usr/bin:/sbin/:/usr/sbin

declare -A FR_FLAGS
FR_FLAGS[EXARCH]=''
FR_FLAGS[EPEL6]=''
FR_FLAGS[EPEL7]=''
FR_FLAGS[DISTTAG]=''
FR_FLAGS[BATCH]=''

declare -A FR_SETTINGS 
FR_SETTINGS[bz_url]="https://bugzilla.redhat.com"
FR_SETTINGS[log]="<RootLogger root (DEBUG)>"
FR_SETTINGS[cache]=""
FR_SETTINGS[resultdir]=""
FR_SETTINGS[init_done]="True"
FR_SETTINGS[uniqueext]=""
FR_SETTINGS[configdir]=""
FR_SETTINGS[log_level]="20"
FR_SETTINGS[prebuilt]=""
FR_SETTINGS[verbose]=""
FR_SETTINGS[name]="pdfio"
FR_SETTINGS[use_colors]="True"
FR_SETTINGS[session_log]="/home/zdohnal/.cache/fedora-review.log"
FR_SETTINGS[bug]=""
FR_SETTINGS[url]=""
FR_SETTINGS[copr_build_descriptor]=""
FR_SETTINGS[list_checks]=""
FR_SETTINGS[list_flags]=""
FR_SETTINGS[list_plugins]=""
FR_SETTINGS[version]=""
FR_SETTINGS[flags]=""
FR_SETTINGS[repo]=""
FR_SETTINGS[mock_config]="fedora-rawhide-x86_64"
FR_SETTINGS[no_report]=""
FR_SETTINGS[nobuild]=""
FR_SETTINGS[mock_options]="--no-cleanup-after --no-clean  --plugin-option=tmpfs:keep_mounted=True "
FR_SETTINGS[other_bz]=""
FR_SETTINGS[plugins_arg]=""
FR_SETTINGS[single]=""
FR_SETTINGS[rpm_spec]="True"
FR_SETTINGS[exclude]=""
FR_SETTINGS[checksum]="sha256"
FR_SETTINGS[plugins]=""

export FR_REVIEWDIR='/home/zdohnal/repo_upstream/pdfio/pdfio'
export HOME=$FR_REVIEWDIR
cd $HOME

export FR_NAME='pdfio'
export FR_VERSION='1.6.1'
export FR_RELEASE='1.fc44'
export FR_GROUP='Unspecified'
export FR_LICENSE='Apache-2.0 WITH LLVM-exception AND Zlib AND GPL-2.0-or-later AND MIT-CMU AND BSD-3-Clause'
export FR_URL='https://msweet.org/pdfio'

export Source0="https://github.com/michaelrsweet/pdfio/releases/download/v1.6.1/pdfio-1.6.1.tar.gz"
export Source1="https://github.com/michaelrsweet/pdfio/releases/download/v1.6.1/pdfio-1.6.1.tar.gz.sig"
export Source2="msweet-pub.gpg"



export FR_PREP='/usr/libexec/gpgverify  --keyring='\''/home/zdohnal/rpmbuild/SOURCES/msweet-pub.gpg'\'' --signature='\''/home/zdohnal/rpmbuild/SOURCES/pdfio-1.6.1.tar.gz.sig'\'' --data='\''/home/zdohnal/rpmbuild/SOURCES/pdfio-1.6.1.tar.gz'\''
cd '\''/home/zdohnal/rpmbuild/BUILD/pdfio-1.6.1-build'\''
rm -rf '\''pdfio-1.6.1'\''
/usr/lib/rpm/rpmuncompress -x '\''/home/zdohnal/rpmbuild/SOURCES/pdfio-1.6.1.tar.gz'\''
STATUS=$?
if [ $STATUS -ne 0 ]; then
exit $STATUS
fi
cd '\''pdfio-1.6.1'\''
/usr/bin/chmod -Rf a+rX,u+w,g-w,o-w .
/usr/bin/git init -q
/usr/bin/git config user.name "rpm-build"
/usr/bin/git config user.email "<rpm-build>"
/usr/bin/git config gc.auto 0
/usr/bin/git add --force .
GIT_COMMITTER_DATE=@${SOURCE_DATE_EPOCH:-${RPM_BUILD_TIME:?}} GIT_AUTHOR_DATE=@${SOURCE_DATE_EPOCH:-${RPM_BUILD_TIME:?}}\
/usr/bin/git commit -q --no-gpg-sign --allow-empty -a\
--author "rpm-build <rpm-build>" -m "pdfio-1.6.1 base"
/usr/bin/git checkout --track -b rpm-build'
export FR_BUILD='
CFLAGS="${CFLAGS:--O2 -flto=auto -ffat-lto-objects -fexceptions -g -grecord-gcc-switches -pipe -Wall -Werror=format-security -Wp,-U_FORTIFY_SOURCE,-D_FORTIFY_SOURCE=3 -Wp,-D_GLIBCXX_ASSERTIONS -specs=/usr/lib/rpm/redhat/redhat-hardened-cc1 -fstack-protector-strong -specs=/usr/lib/rpm/redhat/redhat-annobin-cc1  -m64 -march=x86-64 -mtune=generic -fasynchronous-unwind-tables -fstack-clash-protection -fcf-protection -mtls-dialect=gnu2 -fno-omit-frame-pointer -mno-omit-leaf-frame-pointer  }" ; export CFLAGS ;
CXXFLAGS="${CXXFLAGS:--O2 -flto=auto -ffat-lto-objects -fexceptions -g -grecord-gcc-switches -pipe -Wall -Werror=format-security -Wp,-U_FORTIFY_SOURCE,-D_FORTIFY_SOURCE=3 -Wp,-D_GLIBCXX_ASSERTIONS -specs=/usr/lib/rpm/redhat/redhat-hardened-cc1 -fstack-protector-strong -specs=/usr/lib/rpm/redhat/redhat-annobin-cc1  -m64 -march=x86-64 -mtune=generic -fasynchronous-unwind-tables -fstack-clash-protection -fcf-protection -mtls-dialect=gnu2 -fno-omit-frame-pointer -mno-omit-leaf-frame-pointer  }" ; export CXXFLAGS ;
FFLAGS="${FFLAGS:--O2 -flto=auto -ffat-lto-objects -fexceptions -g -grecord-gcc-switches -pipe -Wall -Wp,-U_FORTIFY_SOURCE,-D_FORTIFY_SOURCE=3 -Wp,-D_GLIBCXX_ASSERTIONS -specs=/usr/lib/rpm/redhat/redhat-hardened-cc1 -fstack-protector-strong -specs=/usr/lib/rpm/redhat/redhat-annobin-cc1  -m64 -march=x86-64 -mtune=generic -fasynchronous-unwind-tables -fstack-clash-protection -fcf-protection -mtls-dialect=gnu2 -fno-omit-frame-pointer -mno-omit-leaf-frame-pointer -I/usr/lib64/gfortran/modules  }" ; export FFLAGS ;
FCFLAGS="${FCFLAGS:--O2 -flto=auto -ffat-lto-objects -fexceptions -g -grecord-gcc-switches -pipe -Wall -Wp,-U_FORTIFY_SOURCE,-D_FORTIFY_SOURCE=3 -Wp,-D_GLIBCXX_ASSERTIONS -specs=/usr/lib/rpm/redhat/redhat-hardened-cc1 -fstack-protector-strong -specs=/usr/lib/rpm/redhat/redhat-annobin-cc1  -m64 -march=x86-64 -mtune=generic -fasynchronous-unwind-tables -fstack-clash-protection -fcf-protection -mtls-dialect=gnu2 -fno-omit-frame-pointer -mno-omit-leaf-frame-pointer -I/usr/lib64/gfortran/modules  }" ; export FCFLAGS ;
VALAFLAGS="${VALAFLAGS:--g}" ; export VALAFLAGS ;
RUSTFLAGS="${RUSTFLAGS:--Copt-level=3 -Cdebuginfo=2 -Ccodegen-units=1 -Cstrip=none -Cforce-frame-pointers=yes -Clink-arg=-specs=/usr/lib/rpm/redhat/redhat-package-notes --cap-lints=warn}" ; export RUSTFLAGS ;
LDFLAGS="${LDFLAGS:--Wl,-z,relro -Wl,--as-needed  -Wl,-z,pack-relative-relocs -Wl,-z,now -specs=/usr/lib/rpm/redhat/redhat-hardened-ld -specs=/usr/lib/rpm/redhat/redhat-hardened-ld-errors -specs=/usr/lib/rpm/redhat/redhat-annobin-cc1  -Wl,--build-id=sha1 -specs=/usr/lib/rpm/redhat/redhat-package-notes  }" ; export LDFLAGS ;
LT_SYS_LIBRARY_PATH="${LT_SYS_LIBRARY_PATH:-/usr/lib64:}" ; export LT_SYS_LIBRARY_PATH ;
CC="${CC:-gcc}" ; export CC ;
CXX="${CXX:-g++}" ; export CXX;
[ "-flto=auto -ffat-lto-objects"x != x ] &&
for file in $(find . -type f -name configure -print); do
/usr/bin/sed -r --in-place=.backup '\''s/^char \(\*f\) \(\) = /__attribute__ ((used)) char (*f) () = /g'\'' $file;
diff -u $file.backup $file && mv $file.backup $file
/usr/bin/sed -r --in-place=.backup '\''s/^char \(\*f\) \(\);/__attribute__ ((used)) char (*f) ();/g'\'' $file;
diff -u $file.backup $file && mv $file.backup $file
/usr/bin/sed -r --in-place=.backup '\''s/^char \$2 \(\);/__attribute__ ((used)) char \$2 ();/g'\'' $file;
diff -u $file.backup $file && mv $file.backup $file
/usr/bin/sed --in-place=.backup '\''1{$!N;$!N};$!N;s/int x = 1;\nint y = 0;\nint z;\nint nan;/volatile int x = 1; volatile int y = 0; volatile int z, nan;/;P;D'\'' $file;
diff -u $file.backup $file && mv $file.backup $file
/usr/bin/sed -r --in-place=.backup '\''/lt_cv_sys_global_symbol_to_cdecl=/s#(".*"|'\''"'\''"'\''.*'\''"'\''"'\'')#"sed -n -e '\''"'\''"'\''s/^T .* \\(.*\\)$/extern int \\1();/p'\''"'\''"'\'' -e '\''"'\''"'\''s/^$symcode* .* \\(.*\\)$/extern char \\1;/p'\''"'\''"'\''"#'\'' $file;
diff -u $file.backup $file && mv $file.backup $file
done;
[ "1" = 1 ] && for i in $(find $(dirname ./configure) -name config.guess -o -name config.sub) ; do
[ -f /usr/lib/rpm/redhat/$(basename $i) ] && /usr/bin/rm -f $i && /usr/bin/cp -fv /usr/lib/rpm/redhat/$(basename $i) $i ;
done ;
[ "1" = 1 ] && [ x != "x-Wl,-z,now -specs=/usr/lib/rpm/redhat/redhat-hardened-ld -specs=/usr/lib/rpm/redhat/redhat-hardened-ld-errors" ] &&
for i in $(find . -name ltmain.sh) ; do
/usr/bin/sed -i.backup -e '\''s~compiler_flags=$~compiler_flags="-Wl,-z,now -specs=/usr/lib/rpm/redhat/redhat-hardened-ld -specs=/usr/lib/rpm/redhat/redhat-hardened-ld-errors"~'\'' $i
done ;
./configure --build=x86_64-redhat-linux --host=x86_64-redhat-linux \
--program-prefix= \
--disable-dependency-tracking \
\
--prefix=/usr \
--exec-prefix=/usr \
--bindir=/usr/bin \
--sbindir=/usr/bin \
--sysconfdir=/etc \
--datadir=/usr/share \
--includedir=/usr/include \
--libdir=/usr/lib64 \
--libexecdir=/usr/libexec \
--localstatedir=/var \
$(grep -q "runstatedir=DIR" ./configure && echo '\''--runstatedir=/run'\'') \
--sharedstatedir=/var/lib \
--mandir=/usr/share/man \
--infodir=/usr/share/info --libdir=/usr/lib64 \
--disable-static \
--enable-shared \
--enable-libpng
/usr/bin/make -O -j${RPM_BUILD_NCPUS} V=1 VERBOSE=1'
export FR_INSTALL='make install
# remove duplicated license
rm /home/zdohnal/rpmbuild/BUILD/pdfio-1.6.1-build/BUILDROOT//usr/share/doc/pdfio/{LICENSE,NOTICE}
# copy the font licenses into correct license dir and remove the files
# in the old location
cp -p /home/zdohnal/rpmbuild/BUILD/pdfio-1.6.1-build/BUILDROOT/usr/share/doc/pdfio/examples/code128-LICENSE.txt .
rm /home/zdohnal/rpmbuild/BUILD/pdfio-1.6.1-build/BUILDROOT/usr/share/doc/pdfio/examples/*LICENSE*
# copy the examples to -devel
mkdir -p /home/zdohnal/rpmbuild/BUILD/pdfio-1.6.1-build/BUILDROOT/usr/share/doc/pdfio-devel
cp -pr /home/zdohnal/rpmbuild/BUILD/pdfio-1.6.1-build/BUILDROOT/usr/share/doc/pdfio/examples/ /home/zdohnal/rpmbuild/BUILD/pdfio-1.6.1-build/BUILDROOT/usr/share/doc/pdfio-devel
rm -rf /home/zdohnal/rpmbuild/BUILD/pdfio-1.6.1-build/BUILDROOT/usr/share/doc/pdfio/examples/
# make symlink for big fonts which are already packaged in Fedora
for font in Roboto-Bold.ttf Roboto-Italic.ttf Roboto-Regular.ttf
do
ln -sf ../../../fonts/google-roboto/$font /home/zdohnal/rpmbuild/BUILD/pdfio-1.6.1-build/BUILDROOT/usr/share/doc/pdfio-devel/examples/$font
done
ln -sf ../../../fonts/google-roboto-mono-fonts/RobotoMono-Regular.ttf /home/zdohnal/rpmbuild/BUILD/pdfio-1.6.1-build/BUILDROOT/usr/share/doc/pdfio-devel/examples/RobotoMono-Regular.ttf'

declare -A FR_FILES
FR_FILES[pdfio]='%license LICENSE NOTICE
/usr/lib64/libpdfio.so.1'
FR_FILES[pdfio-devel]='%license code128-LICENSE.txt
%dir /usr/share/doc/pdfio-devel
/usr/share/doc/pdfio-devel/examples
/usr/include/pdfio.h
/usr/include/pdfio-content.h
/usr/lib64/libpdfio.so
/usr/lib64/pkgconfig/pdfio.pc'
FR_FILES[pdfio-doc]='%dir /usr/share/doc/pdfio
/usr/share/doc/pdfio/pdfio.html
/usr/share/doc/pdfio/pdfio-512.png
/usr/share/man/man3/pdfio.3.gz'

declare -A FR_DESCRIPTION


export FR_FILES FR_DESCRIPTION

export FR_PASS=80
export FR_FAIL=81
export FR_PENDING=82
export FR_NOT_APPLICABLE=83


function get_used_rpms()
# returns (stdout) list of used rpms if found, else returns 1
{
    cd $FR_REVIEWDIR
    if test  "${FR_SETTINGS[prebuilt]}" = True
    then
        files=( $(ls ../*.rpm 2>/dev/null | grep -v .src.rpm) )                || files=( '@@' )
    else
        files=( $(ls results/*.rpm 2>/dev/null | grep -v .src.rpm) )                || files=( '@@' )
    fi
    test -e ${files[0]} || return 1
    echo "${files[@]}"
    cd $OLDPWD
}

function unpack_rpms()
# Unpack all non-src rpms in results into rpms-unpacked, one dir per rpm.
{
    [ -d rpms-unpacked ] && return 0
    rpms=( $( get_used_rpms ) ) || return 1
    mkdir rpms-unpacked
    cd rpms-unpacked
    retval=0
    for rpm_path in ${rpms[@]};  do
        rpm=$( basename $rpm_path)
        mkdir $rpm
        cd $rpm
        rpm2cpio ../../$rpm_path | cpio -imd &>/dev/null
        cd ..
    done
    cd ..
}

function unpack_sources()
# Unpack sources in upstream into upstream-unpacked
# Ignores (reuses) already unpacked items.
{
    sources=( $(cd upstream; ls) ) || sources=(  )
    if [[ ${#sources[@]} -eq 0 || ! -e "upstream/${sources[0]}" ]]; then
       return $FR_NOT_APPLICABLE
    fi
    for source in "${sources[@]}"; do
        mkdir upstream-unpacked/$source 2>/dev/null || continue
        rpmdev-extract -qfC  upstream-unpacked/$source upstream/$source ||            cp upstream/$source upstream-unpacked/$source
    done
}

function attach()
# Usage: attach <sorting hint> <header>
# Reads attachment from stdin
{
    startdir=$(pwd)
    cd $FR_REVIEWDIR
    for (( i = 0; i < 10; i++ )); do
        test -e $FR_REVIEWDIR/.attachments/*$i || break
    done
    if [ $i -eq 10 ]; then
        echo "More than 10 attachments! Giving up" >&2
        exit 1
    fi
    sort_hint=$1
    shift
    title=${*//\/ }
    file="$sort_hint;${title/;/:};$i"
    cat > .attachments/"$file"
    cd $startdir
}

