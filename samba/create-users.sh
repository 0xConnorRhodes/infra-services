#!/bin/bash
# entrypoint script adds users and passwords in env_file and starts smbd

for i in $(seq 1 "${user_count}"); do
	eval user=\$user$i
	eval password=\$password$i
	adduser --disabled-password "$user"
	(echo $password; echo $password) | smbpasswd -a $user
done

smbd
