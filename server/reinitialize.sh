
full_path=$(realpath $0)
dir_path=$(dirname $full_path)
temp_dir="$dir_path/temp"
echo "reinitializing mysql data dir"
echo $dir_path
rm -rf $dir_path/data/mysql/*
rm -rf $dir_path/binlog/*

# Initialize mysql files using mysqld --initialize-insecure:
$dir_path/bin/mysqld --defaults-file=$dir_path/my.cnf --tmpdir=$temp_dir --explicit_defaults_for_timestamp --initialize-insecure

# Start mysql server after it has been initialized:
$dir_path/bin/mysqld --defaults-file=$dir_path/my.cnf --tmpdir=$temp_dir --explicit_defaults_for_timestamp --console
