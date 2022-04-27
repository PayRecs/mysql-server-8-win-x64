    
full_path=$(realpath $0)
dir_path=$(dirname $full_path)
temp_dir="$dir_path/temp"
echo "mysql files already initialized"
$dir_path/bin/mysqld --defaults-file=$dir_path/my.cnf --tmpdir=$temp_dir --explicit_defaults_for_timestamp --console

