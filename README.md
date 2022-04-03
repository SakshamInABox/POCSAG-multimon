# POCSAG-multimon

Barebones bash script that uses multimon-ng and rtl_fm to post POCSAG messages to the webhook of your choice. The default script body is configured for Discord webhooks.

### Usage

1. Ensure that relevant dependencies such as rtl_fm and multimon-ng are present on the system.
2. On row three insert the webhook url between the quotes. (The while loop is configured for Discord webhook, modify the JSON body accordingly for Slack or other webhook formats)
3. Save the script and make it executable (chmod +x script.sh).
4. Run the script.
