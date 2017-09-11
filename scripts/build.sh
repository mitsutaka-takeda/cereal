# Build script for Linux/MacOs
#
# This script forward command line arguments to the cmake command.
# For example, if we watn to skip the portability test, we can invoke this script as follows.
#  
#   build.sh -DSKIP_PORTABILITY_TEST=ON
#

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

cmake -DCMAKE_CXX_FLAGS="-Wall -g -Wextra -Wshadow -pedantic -Wold-style-cast -std=c++11" "$*" "$DIR/../"
