#!/bin/bash

HEIGHT=16
WIDTH=45
CHOICE_HEIGHT=11
BACKTITLE="Visit PlexGuide.com - Automations Made Simple"
TITLE="PlexGuide - Version 5.045"

OPTIONS=(A "Donation Menu"
         B "RClone & PlexDrive"
         C "PG Application Suite (Programs)"
         D "Enhance Processor Performance"
         E "Network & Server Benchmarks"
         F "Info & Troubleshoot"
         G "Backup & Restore"
         H "Update (Read Changelog)"
         I "Uninstall PG"
         J "BETA: Uncapped Upload Speeds"
         K "BETA: Turn On/Off App Ports"
         Z "Exit")

CHOICE=$(dialog --backtitle "$BACKTITLE" \
                --title "$TITLE" \
                --menu "$MENU" \
                $HEIGHT $WIDTH $CHOICE_HEIGHT \
                "${OPTIONS[@]}" \
                2>&1 >/dev/tty)

case $CHOICE in
        A)
            bash /opt/plexguide/scripts/menus/donate-norm-menu.sh ;;
        B)
            bash /opt/plexguide/menus/plexdrive/rc-pd.sh ;;
        C)
            bash /opt/plexguide/menus/programs/main.sh ;;
        D)
            bash /opt/plexguide/scripts/menus/processor/processor-menu.sh ;;
        E)
            bash /opt/plexguide/scripts/menus/bench-menu.sh ;;
        F)
            bash /opt/plexguide/menus/info/main.sh ;;
        G)
            bash /opt/plexguide/menus/backup-restore/main.sh ;;
        H)
            clear
            bash /opt/plexguide/scripts/upgrade/main.sh ;;
        I)
            bash /opt/plexguide/scripts/menus/uninstaller-main.sh ;;
        J)
            bash /opt/plexguide/menus/transfer/main.sh ;;
        K)
            bash /opt/plexguide/menus/ports/main.sh ;;
        Z)
            clear
            echo "1. Please STAR PG via http://github.plexguide.com"
            echo "2. Join the PG Discord via http://discord.plexguide.com"
            echo "3. Donate to PG via http://donate.plexguide.com"
            echo ""
            echo "TIP: Restart the Program Anytime, type: plexguide"
            echo "TIP: Update Plexguide Anytime, type: pgupdate"
            echo "TIP: Press Z, then [ENTER] in the Menus to Exit"
            echo "TIP: Menu Letters Displayed are HotKeys"
            echo ""
            exit 0 ;;
esac

## repeat menu when exiting
bash /opt/plexguide/menus/main.sh