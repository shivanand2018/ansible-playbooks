 - name: test mysql_secure_installation
   mysql_secure_installation:
    login_passowrd: "{{ tmp_password }}"
    new_password: "{{ new_passwd }}"
    user: 'root'
    login_host: 'localhost'
    hosts: ['localhost', '127.0.0.1', '::1' ]
    change_root_passowrd: true
    remove_anonymous_user: true
    disallow_root_login_remotely: true
    remove_test_db: true
#     register: mysql_secure
#   - name: printing new password
#     debug:
#      var: mysql_secure

