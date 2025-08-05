### tree-sitter-objcpp
Based on
- [tree-sitter-cpp](https://github.com/tree-sitter/tree-sitter-cpp): [v0.23.4](https://github.com/tree-sitter/tree-sitter-cpp/releases/tag/v0.23.4)
- [tree-sitter-objc](https://github.com/BenArvin/tree-sitter-objcpp#): [v3.0.2](https://github.com/BenArvin/tree-sitter-objcpp/releases/tag/v3.0.2)

#### Use in Python project
Requirements
- python-tree-sitter: >= 0.24.0

Package install
```
pip install https://github.com/BenArvin/tree-sitter-objcpp/raw/refs/heads/main/output/tree-sitter-objcpp-3.0.2.tar.gz
or download tar.gz in output and install from local path
pip install local_path/tree-sitter-objcpp-3.0.2.tar.gz
```

Module import
```
from tree_sitter import Language, Parser
from tree_sitter_objcpp import language as objcpp_language

parser = Parser(Language(objcpp_language()))
```