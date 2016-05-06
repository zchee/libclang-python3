#!/usr/bin/env python3
# -*- coding: utf-8 -*-

from setuptools import setup

setup(name="libclang-python3",
      version="3.8.0-dev",
      description="libclang bindings for Python3",
      url="https://github.com/zchee/libclang-python3",
      download_url="https://github.com/zchee/libclang-python3/releases",
      license="License :: OSI Approved :: University of Illinois/NCSA Open Source License",
      classifiers=[
          "Intended Audience :: Developers",
          "License :: OSI Approved :: BSD License",
          "Programming Language :: Python",
          "Development Status :: 5 - Production/Stable",
          "Topic :: Software Development :: Compilers"
      ],
      keywords=["llvm", "clang", "libclang", "python3"],
      author="zchee(Koichi Shiraishi)",
      author_email="k@zchee.io",
      zip_safe=False,
      packages=["clang"]
)
