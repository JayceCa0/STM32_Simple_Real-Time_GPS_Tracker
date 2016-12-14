# STM32 Simple Real-Time DIY GPS Tracker

###How to...
1. Connect modules as show on "Connection.png"
2. MCU side:
  * Replace "YOUR_DOMAIN_HERE" with your domain name in "main.c"
  * Replace "YOUR_APN_HERE" with Access Point Name of your GSM provider
  * Build and flash firmware into MCU
3. Server side
  * Replace "YOUR_GOOGLEAPI_KEY_HERE" with your Google ID in "index.html"
  * Upload all files from "Server Side/source" folder onto server
  * Create database named "trackingbase" with user named "user" and password "uarfqnfdavcq1" (note: You can change these values in "get_location.php" anytime)
  * Upload and replace tables from "tables.sql" file in created database, using PHPMyAdmin for example
4. Power on tracker, wait while it connects, visit yout URL address from browser, appears marker on Google maps with real-time tracking

- You can also use optional USB->UART adapter to see entire GSM command log if something goes wrong.
- All modules available on plenty of online stores worldwide, for very cheap prices

###Demo Video/Photo
- YouTube demo video URL: https://www.youtube.com/watch?v=64JG3vHRAnY
- Google Drive folder URL: https://drive.google.com/drive/folders/0B-L-95hnJIZoS0tIU2dPN2xqdHc
