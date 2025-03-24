 # Note this mostly works but shouldn't be relied on for full devshell.
 { pkgs ? import <nixpkgs> {} }:
 
 (pkgs.buildFHSEnv {
   name = "bazel-userenv-example";
   targetPkgs = pkgs: [
     pkgs.glibc
     pkgs.gcc
     pkgs.libz
     pkgs.bazelisk
   ];
 }).env
