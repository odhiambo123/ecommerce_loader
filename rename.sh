#!/bin/bash
cd html
mv config-dist.php config.php
mv adimin/config-dist.php admin/config.php
chmod 0777 config.php
chmod 0777 admin/config.php



