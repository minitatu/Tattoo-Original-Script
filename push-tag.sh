
---
description: Element class, Elements class, and basic dom methods.

license: MIT-style

authors:
- Jimmy Dean
- Buck Kingsley

requires:
- localComponent1
- [localComponent2, localComponent3]
- externalPackage1/tag: component4
- externalPackage2/tag: [component1, component2]

provides: [Element, Elements, $, $$]

...
*/

#!/usr/bin/env bash

set -e

# Insist repository is clean
git diff-index --quiet HEAD

git checkout master
git pull origin master
version=$(grep "__version__ = " spacy/about.py)
version=${version/__version__ = }
version=${version/\'/}
version=${version/\'/}
git tag "v$version"
git push origin --tags
