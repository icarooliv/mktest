rm -rf ./_docs/;
mkdir -p ./_docs/;
cp -R docs/*.md _docs/;
find _docs/ -iname "*.md" -type f -exec sh -c 'pandoc "${0}" -o "${0%.md}.rst"' {} \;
rm -rf ./_docs/*.md;
make build