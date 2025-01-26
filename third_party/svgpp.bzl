load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_file")

def svgpp():
    http_file(
        name = "svgpp",
        url = "https://github.com/svgpp/svgpp/archive/refs/tags/v1.3.1.tar.gz",
        sha256 = "e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855",
    )