repo_path=$(git rev-parse --show-toplevel)


for file in "${REPO_PATH}/pointers/.bashrc"; do
  cp $file "${HOME}/.bas"
