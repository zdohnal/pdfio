Name: pdfio
Version: 1.6.0
Release: 1%{?dist}
Summary: C library for PDF I/O
# the same license as CUPS
License: Apache-2.0 WITH LLVM-exception
URL: https://msweet.org/pdfio
Source0: https://github.com/michaelrsweet/pdfio/releases/download/v%{version}/%{name}-%{version}.tar.gz


# Patches


# uses autosetup with git
BuildRequires: git-core
# builds with gcc
BuildRequires: gcc
# use make for Makefile
BuildRequires: make
# uses pkg-config in SPEC and in configure
BuildRequires: pkgconf-pkg-config
# supports compression
BuildRequires: pkgconfig(zlib)
# for enhanced PNG support
BuildRequires: pkgconfig(libpng16)

%description
PDFIO is C library for reading and writing PDF files. It includes support
for reading and writing encrypted PDF files, accessing pages, objects,
and streams withing PDF file, working with PDF metadata etc.

%package devel
# Apache 2.0 with exception - pdfio code
# GPL-2.0-or-later - code128 code from examples
# OFL-1.1 - SIL Open Font License for Roboto fonts in examples
License: Apache-2.0 WITH LLVM-exception AND GPL-2.0-or-later AND OFL-1.1
Summary: PDFIO development files
Requires: %{name}%{?_isa} = %{version}-%{release}

%description devel
The package contains development files for PDFIO library.


%prep
%autosetup -S git


%build
%configure --libdir=%{_libdir} \
  --disable-static \
  --enable-shared \
  --enable-libpng

%make_build


%install
make install

rm %{buildroot}/%{_pkgdocdir}/{LICENSE,NOTICE}
mv %{buildroot}%{_pkgdocdir}/examples/*LICENSE* .


%check
make test


%files
%license LICENSE NOTICE
%doc README.md CHANGES.md
%{_libdir}/libpdfio.so.1

%files devel
%license code128-LICENSE.txt Roboto-LICENSE.txt
%{_includedir}/pdfio.h
%{_includedir}/pdfio-content.h
%{_libdir}/libpdfio.so
%{_libdir}/pkgconfig/pdfio.pc
%{_mandir}/man3/pdfio.3.gz
%dir %{_pkgdocdir}
%{_pkgdocdir}/pdfio.html
%{_pkgdocdir}/pdfio-512.png
%dir %{_pkgdocdir}/examples
# TrueType fonts, C source files, docs
# for examples
%{_pkgdocdir}/examples/*


%changelog
* Wed Dec 17 2025 Zdenek Dohnal <zdohnal@redhat.com> - 1.6.0-1
- Initial import
