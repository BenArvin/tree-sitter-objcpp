echo "npm version suggestion: >=v22.10.0"
echo "Python version suggestion: >=3.9.10"

rm -rf node_modules package-lock.json
npm install
npm list

tree-sitter generate

source .venv/bin/activate

pip install setuptools>=42
pip install wheel

python setup.py sdist bdist_wheel

cp -rf dist/tree-sitter-objcpp-*.tar.gz output/