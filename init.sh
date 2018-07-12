#!/bin/bash

#init package name
if [ -z "$1" ]; then
    echo "Init with new package name. Ex: ./init new_package"
    exit 0
fi
package=$1
mv ex_package $package
sed "s/ex_package/${package}/g" -i setup.py $package/__init__.py
mv $package/ex_package.py $package/$package.py
echo "Done"
