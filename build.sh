echo "npm version suggestion: v22.10.0"

echo "********************************  build c  ********************************"
cd tree-sitter-c
rm -rf node_modules package-lock.json
npm install
npm list
tree-sitter generate
npm link

cd ..

echo "********************************  build objc  ********************************"
cd tree-sitter-objc
rm -rf node_modules package-lock.json
npm install
npm link tree-sitter-c
npm list
tree-sitter generate
npm link

cd ..

echo "********************************  build objcpp  ********************************"
cd tree-sitter-objcpp
rm -rf node_modules package-lock.json
npm install
npm link tree-sitter-c tree-sitter-objc
npm list
tree-sitter generate

gcc -shared -o build/tree-sitter-objcpp.so -I./src src/parser.c src/scanner.cc -Os -fPIC -lstdc++

# cross build linux output in macos
# brew install FiloSottile/musl-cross/musl-cross
# x86_64-linux-musl-gcc -shared -o build/tree-sitter-objcpp.so -I./src src/parser.c src/scanner.cc -Os -fPIC -lstdc++

# cd ..
# lipo -info output/tree-sitter-objcpp.so
# lipo -create -output output/tree-sitter-objcpp.so output/tree-sitter-objcpp_arm64.so output/tree-sitter-objcpp_x86_64.so