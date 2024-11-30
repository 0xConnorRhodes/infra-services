#!/usr/bin/env python3

import os

notes_dir = "/zssd/notes/zk_notes"

sb_files = [
		".silverbullet.db",
		".silverbullet.db-shm",
		".silverbullet.db-wal"
	#"SETTINGS.md",
	#"PLUGS.md"
	   ]

for file in sb_files:
	file_path = os.path.join(notes_dir, file)
	os.remove(file_path)
