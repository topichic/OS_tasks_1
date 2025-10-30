#!/bin/bash
echo "Создание практического окружения..."
mkdir -p linux_practice
cd linux_practice
mkdir -p project/{src,bin,doc,backup,test/{unit,integration}}
mkdir -p data/{logs,temp,cache,archive/{2023,2024}}
mkdir -p home/user/{documents,downloads,desktop,hidden_folder}
mkdir -p system/{config,bin,lib,tmp}
echo "config data" > system/config/app.conf
echo "binary data" | base64 > system/bin/app.bin
echo "library data" > system/lib/lib.so
echo "temporary file" > system/tmp/temp123.tmp
echo "#!/bin/bash\necho 'Hello World'" > project/src/main.sh
echo "Test data 1" > project/src/file1.txt
echo "Test data 2" > project/src/file2.txt
echo "Compiled binary" > project/bin/app
echo "Documentation" > project/doc/README.md
cp project/src/main.sh project/backup/main_backup.sh
cp project/src/file1.txt project/backup/file1_backup.txt
echo "unit test" > project/test/unit/test_unit.sh
echo "integration test" > project/test/integration/test_integration.sh
touch -t 202301010000 data/archive/2023/old_file1.dat
touch -t 202302150000 data/archive/2023/old_file2.dat
touch -t 202401010000 data/archive/2024/new_file1.dat
dd if=/dev/zero of=data/logs/system.log bs=1K count=10 2>/dev/null
dd if=/dev/zero of=data/logs/app.log bs=1K count=5 2>/dev/null
dd if=/dev/zero of=data/logs/error.log bs=1K count=2 2>/dev/null
mkdir home/user/hidden_folder/.secret
echo "hidden config" > home/user/hidden_folder/.secret/.env
echo "bash history" > home/user/hidden_folder/.bash_history
touch home/user/hidden_folder/.hidden_file
touch "home/user/documents/My File With Spaces.txt"
touch "project/src/script with spaces.sh"
ln -s project/src/main.sh home/user/desktop/main_link.sh
ln -s system/config/app.conf project/app_config.link
echo "Практическое окружение создано в директории linux_practice/"
echo "Перейдите в эту директорию: cd linux_practice"
