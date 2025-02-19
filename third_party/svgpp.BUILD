package(default_visibility = ["//visibility:public"])

load("@rules_cc//cc:defs.bzl", "cc_library")

cc_library(
    name = "svgpp",
    includes = ["include"],
    hdrs = glob(["include/**/*.hpp", "include/**/*.inc"]),
    deps = [
         "@boost.mpl",
         "@boost.config",
         "@boost.type_traits",
         "@boost.utility",
         "@boost.iterator",
         "@boost.range",
         "@boost.algorithm",
         "@boost.format",
         "@boost.math",
         "@boost.variant",
         "@boost.spirit",
	 "@boost.tti",
    ]
)
