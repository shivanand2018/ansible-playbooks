---
 - hosts: centossys
   become: true
   gather_facts: false
   vars:  
     packages: [ 'git',  'curl', 'wget' ]
   tasks:
    - name: Installing Packages
      yum: name="{{ item }}" state=latest
      with_items: "{{ packages }}"
      
       
