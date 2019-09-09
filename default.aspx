<!-- Hello from <%= Environment.MachineName %> at <%= DateTime.UtcNow %> -->

<html>
        <head>
                <style>
                body { 
                  background-image: url('Ansible.jpg ');
                  background-repeat: no-repeat;
                  background-attachment: fixed;
                  background-position: center; 
                }
                </style>
                </head>
<body>
     <h1 align="center"> Hello from MachineName: <%= Environment.MachineName %></h1>
     <p align="center"> The time(UTC) on server is : <%= DateTime.UtcNow %></p>

</body>
</html>
