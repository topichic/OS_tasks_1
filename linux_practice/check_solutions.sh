#!/bin/bash
echo "=== ПРОВЕРКА ВЫПОЛНЕНИЯ ЗАДАНИЙ ==="
echo "1. Проверка созданных директорий:"
[ -d "work/projects/my_backups" ] && echo "✓ my_backups создана" || echo "✗ my_backups не найдена"
[ -d "backup_scripts" ] && echo "✓ backup_scripts создана" || echo "✗ backup_scripts не найдена"
[ -d "organized/scripts" ] && echo "✓ organized создана" || echo "✗ organized не найдена"
echo -e "\n2. Проверка скопированных файлов:"
find backup_scripts -name "*.sh" 2>/dev/null | head -3 | while read file; do
echo "✓ Найден: $file"
done
echo -e "\n3. Размеры основных директорий:"
du -sh work backup_scripts organized 2>/dev/null | while read line; do
echo "✓ $line"
done
echo -e "\n4. Проверка дискового пространства:"
df -h | grep "^/dev"
echo -e "\nПроверка завершена!"
