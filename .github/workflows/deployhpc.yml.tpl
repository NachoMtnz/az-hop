---
location: __LOCATION__
resource_group: __RESOURCE_GROUP__
homefs_size_tb: 4
admin_user: hpcadmin
homedir_mountpoint: /anfhome
users: # TODO
  - name: user1
    uid: 10001
    gid: 5000
    shell: /bin/bash
    home: /anfhome/user1
    admin: true
  - name: user2
    uid: 10002
    gid: 5000
    shell: /bin/bash
    home: /anfhome/user2
    admin: true
groups: # TODO
  - name: users
    gid: 5000
queues: # TODO
  - name: viz3d
    sku: Standard_NV6
    image: centos-7.7-desktop-3d
  - name: compute
    sku: Standard_HB120rs_v2
    image: centos-77-v1-rdma-gpgpu