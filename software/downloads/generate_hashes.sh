#!/usr/bin/env bash

rm md5_hashes.chk

md5sum *.zip >> md5_hashes.chk
md5sum *.rar >> md5_hashes.chk
md5sum *.iso >> md5_hashes.chk
md5sum *.exe >> md5_hashes.chk

cat md5_hashes.chk
