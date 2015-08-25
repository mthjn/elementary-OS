## SSH setup on new machine / vbox  
  
```
          ssh-keygen  
          ssh-copy-id user@serverip
          ssh-agent bash
          ssh-add /private/key/path
```
  
And make an executable *sh for it.  

```
          #!/bin/bash
          ssh administrator@111.11.11.11
```
  
