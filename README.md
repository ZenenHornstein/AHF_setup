*********************************************************************************************************
***************************INSTALLATION GUIDE / HOW TO INSTALL AutoHeadFix*******************************
*****************************************************************************************************
**NOTE:I2C and Serial PORT MUST BE ENABLED BY THE USER
to enable click the raspberry in top left corner > preferences > raspberry pi configuration > interfaces >i2c > enable
and serial port > enable**

**NOTE: Serial Console must be DISABLED**

1. clone this repository by typing the following into terminal: git clone https://github.com/ubcbraincircuits/AHF_setup

2. Navigate to the folder called AHF_setup. You should see two files one called AHF_script.sh and the other being this readme.

3. Next we must make the script executable with the command: sudo chmod 765 AHF_script.sh

4. To begin setup use the following command: sudo ./AHF_script.sh  ****NOTE**** depending on the state of your raspberry pi and speed of internet connection this script can take up to an hour to finish. *ALL FOLDERS ARE CRATED RELATIVE TO THE CURRENT DIRECTORY* This means one should execute the script from the desired directory to house AutoHeadFix.

(4.5) You will see an option to enter '0' for a 'dependancy' install. I recommend running the script two times. first as a dependancy install, then a full install. ***See 9 for more info***

5. After most of the install has executed you should reach a set of prompts for setting up mariaDB ***NOTE*** it is recommended that you answer "Y" to all prompts within the mariaDB setup as it will ensure a secure install.

6. After finishing the mariaDB initiliaztion you should encounter another prompt asking for the root password you just created, as well as username/pass for a new user to be created aswell as the database new user will have access too. This will be the local database that AutoHeadFix will utilize.

7. You should see a message displaying the information you just entered. These are the credentials for the new user aswell as the associated database. This database and user should be automatically created.

8. To verify the install executed properly run the command: sudo -u root -p -e "SHOW DATABASES;"
You should see a database with the name you just entered. If so congratulations! the install was a success.

9. Details on dependancy vs full installation. Dependancy installation downloads only those packages AHF depends on that are NOT available through pip or conda it will not clone the main repository. Everything performed in the dependancy install is also performed in the full install, thus running both is technically redundant. So why is dependancy install included? Simply because it was usefull at time of development to be able to clone certain repositories in isolation. This may come in handy if users encounter import errors after running a full install.

10. After installation you should see a few folders. The main function is located within the folder 
"AutoHeadFix"





