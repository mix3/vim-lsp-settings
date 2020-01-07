#!/bin/bash

set -e

curl -s -L -O http://xrl.us/cpanm

cat <<EOF > cpanfile
requires 'perl', '5.18.0';
requires 'Perl::LanguageServer', '2.0';
EOF

perl cpanm --installdeps . --notest -L ./pllslib

cat <<EOF > plls
perl -I./pllslib/lib/perl5 -MPerl::LanguageServer -e Perl::LanguageServer::run
EOF

chmod +x plls
