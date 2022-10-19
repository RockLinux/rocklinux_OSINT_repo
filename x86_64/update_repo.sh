#!/bin/bash

rm rocklinux_OSINT_repo*

echo "repo-add"
repo-add -s -n -R rocklinux_OSINT_repo.db.tar.gz *.pkg.tar.zst
repo-add -s -n -R rocklinux_OSINT_repo.db.tar.gz *.pkg.tar.xz
sleep 1

rm rocklinux_OSINT_repo.db
rm rocklinux_OSINT_repo.db.sig

rm rocklinux_OSINT_repo.files
rm rocklinux_OSINT_repo.files.sig

mv rocklinux_OSINT_repo.db.tar.gz rocklinux_OSINT_repo.db
mv rocklinux_OSINT_repo.db.tar.gz.sig rocklinux_OSINT_repo.db.sig

mv rocklinux_OSINT_repo.files.tar.gz rocklinux_OSINT_repo.files
mv rocklinux_OSINT_repo.files.tar.gz.sig rocklinux_OSINT_repo.files.sig

echo "####################################"
echo "Repo Updated!!"
echo "####################################"
