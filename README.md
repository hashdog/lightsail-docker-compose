# lightsail-docker-compose

## Docker containers with Docker Compose
Currently Lightsail does not feature a Docker blueprint, but that's not really an issue. We can use the optional launch script to install Docker and make other necessary changes to the system. In the case of this tutorial you'll create an instance with a launch script that installs Docker and Docker Compose. It will also copy in the Docker Compose file that defines our application, and it will modify systemd so that on subsequent reboots our application automatically restarts.

1. From the Lightsail console click `Create Instance`.

1. Choose whichever region you prefer.

1. Under `Select a blueprint` click on `OS Only` and choose the Ubuntu image.

1. Click on `+ Add launch script`.

1. Enter the following code into the dialog box:

   ```
   curl -o lightsail-compose.sh https://raw.githubusercontent.com/hashdog/lightsail-docker-compose/master/lightsail-compose.sh

   chmod +x ./lightsail-compose.sh

   ./lightsail-compose.sh
   ```

   **Note**: To see contents of that script, please visit the github repository

1. Choose the appropriate instance size. In this case, there's no reason to do anything more than the $5 size.

1. Optionally rename the instance.

1. Click `Create`.

   Lightsail will launch a new instances, copy in our shell script, and execute it on first boot.

   The shell script installs `docker` and `docker-compose`.
<!-- It then copies over the Docker compose file. Next it copies in the systemd unit file, and registers it. This is the most reliable way to ensure the application runs automatically after a system restart. Finally, it starts the application via Docker Compose. -->

1. Once the instance is up and running you can navigate to its IP address to see the running site.

<!-- 1. To ensure everything is working as expected click `Add task` in the top menu. Fill in the details and click `Add Task`.

   You should now have that task listed.

1. Docker containers are ephemeral by default (meaning when a container reboots any changes made to the container are removed), but the Docker Compose file specified a persistent volume to use for the database data.

   To make sure this is working, restart your Lightsail instance by navigatimg to the Lightsail console, clicking the 3 dot menu in the upper right of the instance card, and selecting `Restart`.

   **Note**: The instance will say it's running very quickly, however it will takea  minute or two before everything is booted up and running.

1. Reload the application website in your browser and ensure your task is still listed to verify that the Docker volumes are persisting your data. -->

#### Cleanup
1. To delete your Lightsail instance navigate to the Lightsail console, click the 3 dot menu in the upper right of the instance card, and click `Delete`.

   Confirm you wish to delete the instance.