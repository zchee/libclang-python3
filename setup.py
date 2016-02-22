#!/usr/bin/env python3
# -*- coding: utf-8 -*-

from setuptools import setup

setup(name="clang-python3",
      version="0.0.1",
      description="Python3 bindings for libclang",
      url="https://github.com/zchee/clang-python3",
      download_url="https://github.com/zchee/clang-python3/releases",
      license="License :: OSI Approved :: University of Illinois/NCSA Open Source License",
      classifiers=[
          "Intended Audience :: Developers",
          "License :: OSI Approved :: BSD License",
          "Programming Language :: Python",
          "Development Status :: 5 - Production/Stable",
          "Topic :: Software Development :: Compilers"
      ],
      keywords=["llvm", "clang", "libclang"],
      author="Koichi Shiraishi aka zchee",
      author_email="k@zchee.io",
      zip_safe=False,
      packages=["clang"]
)
