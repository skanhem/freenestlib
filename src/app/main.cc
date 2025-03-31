#include <iostream>
#include <string>
#include "absl/flags/flag.h"
#include "absl/flags/parse.h"
#include "absl/flags/usage.h"

ABSL_FLAG(bool, verbose, false, "Enable verbose output");

int main(int argc, char* argv[]) {
  absl::ParseCommandLine(argc, argv);

  bool verbose = absl::GetFlag(FLAGS_verbose);

  if (verbose) {
    std::cout << "Hello freenest.\n";
  }

  return EXIT_SUCCESS;
}
