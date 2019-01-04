for i in /{{ activity_root_path }}/conf/profile.d/*.sh /{{ activity_root_path }}/conf/profile.d/sh.local ; do
    if [ -r "$i" ]; then
        if [ "${-#*i}" != "$-" ]; then 
            . "$i"
        else
            . "$i" >/dev/null
        fi
    fi
done