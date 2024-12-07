# Log Archiving Script

A lightweight bash script that creates timestamped tar.gz archives of log files or directories. Perfect for automated backups and log management tasks.

## Features

The script automatically creates compressed archives with names including the current timestamp, making it easy to maintain organized backups of your logs.

- Creates `.tar.gz` archives with timestamps in format: `logs_archive_YYYYMMDD_HHMMSS.tar.gz`
- Supports both single files and entire directories
- Includes input validation and clear error messages
- Simple, single-file solution

## Usage

Run the script with a single path argument:

```bash
./archive_logs.sh /path/to/logs
```

Project idea comes from https://roadmap.sh/projects/log-archive-tool
