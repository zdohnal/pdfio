Name: pdfio
Version: 1.6.1
Release: 1%{?dist}
Summary: C library for PDF I/O
# the same license as CUPS
License: Apache-2.0 WITH LLVM-exception AND Zlib AND GPL-2.0-or-later AND OFL-1.1
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
Summary: PDFIO development files
Requires: %{name}%{?_isa} = %{version}-%{release}

%description devel
The package contains development files for PDFIO library.

%package examples
# GPL-2.0-or-later - code128 font from examples
# OFL-1.1 - SIL Open Font License for Roboto fonts in examples
# Apache 2.0 with exception - pdfio example code
Summary: PDFIO examples
# contains only source code and fonts for examples
BuildArch: noarch
# examples require PDFIO development headers if user wants to compile them
Requires: %{name}-devel = %{version}-%{release}

%description examples
The package contains several examples of source files to illustrate working
with PDFIO library.


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

# remove duplicated license
rm %{buildroot}/%{_pkgdocdir}/{LICENSE,NOTICE}
# copy the font licenses into correct license dir and remove the files
# in the old location
cp -p %{buildroot}%{_pkgdocdir}/examples/*LICENSE* .
rm %{buildroot}%{_pkgdocdir}/examples/*LICENSE*

# move examples out of documentation
mkdir %{buildroot}%{_datadir}/%{name}
cp -pr %{buildroot}%{_pkgdocdir}/examples %{buildroot}%{_datadir}/%{name}
rm -rf %{buildroot}%{_pkgdocdir}/examples


%check
make test


%files
%license LICENSE NOTICE
%doc README.md CHANGES.md
%{_libdir}/libpdfio.so.1

%files devel
%{_includedir}/pdfio.h
%{_includedir}/pdfio-content.h
%{_libdir}/libpdfio.so
%{_libdir}/pkgconfig/pdfio.pc
%{_mandir}/man3/pdfio.3.gz
%{_pkgdocdir}/pdfio.html
%{_pkgdocdir}/pdfio-512.png

%files examples
%license code128-LICENSE.txt Roboto-LICENSE.txt
%dir %{_datadir}/%{name}
%dir %{_datadir}/%{name}/examples
# TrueType fonts, C source files, docs
# for examples
%{_datadir}/%{name}/examples/*


%changelog
* Tue Jan 06 2026 Zdenek Dohnal <zdohnal@redhat.com> - 1.6.1-1
- Initial import
