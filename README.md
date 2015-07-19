python3-libclang
================

This is a port of the `clang` Python bindings to Python 3. I strive to be as
close as possible to the Python 2 bindings; in fact, the unit tests are
exactly the same except for one minor difference in `io` (which is due to
changes in the Python API.)

This library is developed on Ubuntu 15.04 and LLVM/Clang 3.6. As I sync
irregularly, some features may be disabled.

You may need to alter LD_LIBRARY_PATH so that the Clang library can be
found. The unit tests are designed to be run with 'nosetests'. For example:


    $ LD_LIBRARY_PATH=$(llvm-config-3.6 --libdir) nosetests3 -v

Status
------

This build is synced against the upstream version:

	https://llvm.org/svn/llvm-project/cfe/branches/release_36@240324 91177308-0d34-0410-b5e6-96231b3b80d8

Installation
------------

On Ubuntu 15.04, you need the `python3-nose` package. You can install it using
`sudo apt-get install python3-nose`. Alternatively, you can download it using
pip.
