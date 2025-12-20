@echo off
pg_restore -U postgres -d postgres_restore postgres_backup.backup
pause
