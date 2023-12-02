#!/bin/bash
cd ..
mv ecommerce_loader www
rm -f LICENSE
cd html
mv config-dist.php config.php
mv adimin/config-dist.php admin/config.php
chmode 0777 config.php
chmode 0777 admin/config.php



