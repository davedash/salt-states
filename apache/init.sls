apache2:
  pkg.installed: []
  service.running:
    - require:
      - pkg: apache2
      - file: /srv/www/htdocs

/srv/www/htdocs:
  file.directory:
    - user: wwwrun
    - group: www
    - dir_mode: 755
    - file_mode: 444
    - recurse:
      - user
      - group
      - mode
      - ignore_dirs
