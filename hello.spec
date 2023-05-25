Name:           hello
Version:        0.1
Release:        1%{?dist}
Summary:        A simple hello world script

License:        GPL
URL:            example.com
Source0:        %{name}-0.1.tar.gz

Group:          Unspecified

BuildArch:      noarch

BuildRequires:  bash
Requires:       bash

%description
Hello proj



%prep
%setup -q


%build
g++ -o final_build hello.cpp


%install
mkdir -p %{buildroot}/%{_bindir}
install -m 0755 final_build %{buildroot}/%{_bindir}/final_build
echo "INSTALL FINISH"


%files
##%{buildroot}/%{_bindir}/final_build
##%doc {_datadir}/doc/doc.mmd



%changelog
* Mon May 24 2023 pe4enko01 <pe4enko02@yandex.ru>
- 
