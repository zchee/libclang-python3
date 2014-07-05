//===----------------------------------------------------------------------===//
// Clang Python Bindings
//===----------------------------------------------------------------------===//

This directory implements Python bindings for Clang.

You may need to alter LD_LIBRARY_PATH so that the Clang library can be
found. The unit tests are designed to be run with 'nosetests'. For example:
--
$ LD_LIBRARY_PATH=$(llvm-config-3.4 --libdir) nosetests3 -v
tests.cindex.test_index.test_create ... ok
...

OK
--

On Ubuntu 14.04, you need the python3-nose package to get nosetests3.
Alternatively, you can download it using pip.