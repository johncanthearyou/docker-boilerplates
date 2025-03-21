SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
docker image build "$SCRIPT_DIR/$1" -t "latest-$1" && docker run --rm -it "latest-$1"