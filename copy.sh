repo_path=$(git rev-parse --show-toplevel)
pointer_path="${repo_path}/pointers/*"

shopt -s dotglob
for file_path in $pointer_path; do
    file_output=$(cat $file_path)
    new_path="${HOME}/$(basename $file_path)"
    touch -c $new_path
    update_string="${file_output//FILE_PATH/${file_path}}"

    if ! grep -q $update_string $new_path; then
        echo $update_string >> $new_path
    fi
done
shopt -u dotglob

#Test with docker
