#!/bin/bash
# Assistant script to automate as much as possible the process of publishing a new version of the rulebook, and guide the user in the steps it cannot automatise
DATE=`date +%Y-%m-%d`
read -p "TODO in Sublime: Update the date in the title"
read -p "TODO in Sublime: Markdown Preview Save to HTML"
git status
read -p "TODO git add other files than X.md, X.html and X.css (if any) before going on with this script"
read -p "version number?" VNUMBER
# FOLDERNAME="_v$VNUMBER"
FOLDERNAME=./Versions/${DATE}_v${VNUMBER}
LATESTVERSIONFOLDERNAME=./Versions/latest
# echo $FOLDERNAME
mkdir $FOLDERNAME
echo "Created directory $FOLDERNAME"
mkdir $FOLDERNAME/localVersion
FILENAME=TwilightImperium_ShatteredAscension_FAQ
# Copy the local version to the $VNUMBER/LocalVersion folder of the Versions folder (changing the name of the file)
cp ${FILENAME}.md ${FOLDERNAME}/v${VNUMBER}_${FILENAME}.md
cp ${FILENAME}.html ${FOLDERNAME}/v${VNUMBER}_${FILENAME}.html
echo "Local versions of .md and .html saved in version folder"

rm -r ExportToAstralvault
mkdir ExportToAstralvault
echo "Cleaned up ExportToAstralvault folder"
mkdir ./ExportToAstralvault/v_${VNUMBER}
cp ${FILENAME}.md ./ExportToAstralvault/v${VNUMBER}/v${VNUMBER}_${FILENAME}.md
cp ${FILENAME}.html ./ExportToAstralvault/v${VNUMBER}/v${VNUMBER}_${FILENAME}.html
mkdir ./ExportToAstralvault/latest
cp ${FILENAME}.md ./ExportToAstralvault/latest/${FILENAME}.md
cp ${FILENAME}.html ./ExportToAstralvault/latest/${FILENAME}.html
echo "FAQ files copied to ExportToAstralvault folder"

read -p "TODO copy/paste content of ExportToAstralvault folder to cyrusaFAQ folder on astralvault (yes to overwrites)"

echo "Export to github"
git add ${FILENAME}.md
git add ${FILENAME}.html
git add ${FILENAME}.css
git status
git commit -m "v${VNUMBER}"
echo "cayrusa"
git push
echo "Git commit/push done"

read -p "TODO in sublime: Update date and version number in the title for the next version"
read -p "TODO in sublime: Markdown Preview Save to Html"

echo "Now update the website"
echo "Go to: http://www.astralvault.net/games/SA/wp-login.php?redirect_to=http%3A%2F%2Fwww.astralvault.net%2Fgames%2FSA%2Fwp-admin%2F&reauth=1"
echo "Update the Assets page with the version number and date"
read -p "Website edition finished?"

echo "Post about the update on discord. Here is a template:"
echo "**FAQ UPDATE**
FAQ updated to version ${VNUMBER}
Available on the website as usual: <http://www.astralvault.net/games/SA/index.php/downloads/>
Changelog: <LINKTOTHECHANGELOGPOST>"

read -p "Update the todo list about the rule rewrite"

rm -r ExportToAstralvault
mkdir ExportToAstralvault
echo "Cleaned up ExportToAstralvault folder"

read -p "Aaaaaaand you're done. Congratulations!"

# # Copy the local version to the latest/LocalVersion folder of the Versions folder (without changing the name of the file)
# cp ${FILENAME}.md ${LATESTVERSIONFOLDERNAME}/localVersion/${FILENAME}.md
# cp ${FILENAME}.html ${LATESTVERSIONFOLDERNAME}/localVersion/${FILENAME}.html
# echo "Local versions of .md and .html saved in 'latest' folder"
# sed -i 's,./Images,http://www.astralvault.net/games/SA/cyrusa/cyrusaFAQ/Images,g' ${FILENAME}.md
# echo "Replaced ./Images with http://www.astralvault.net/games/SA/cyrusa/cyrusaFAQ/Images in ${FILENAME}.md"
# read -p "TODO in Sublime: Markdown Preview Save to HTML"
# # Copy the online version to the $VNUMBER folder of the Versions folder (changing the name of the file)
# cp ${FILENAME}.md ${FOLDERNAME}/v${VNUMBER}_${FILENAME}.md
# cp ${FILENAME}.html ${FOLDERNAME}/v${VNUMBER}_${FILENAME}.html
# echo "Online versions of .md and .html saved in version folder"
# # Copy the online version to the 'latest' folder of the Versions folder (without changing the name of the file)
# cp ${FILENAME}.md ${LATESTVERSIONFOLDERNAME}/${FILENAME}.md
# cp ${FILENAME}.html ${LATESTVERSIONFOLDERNAME}/${FILENAME}.html
# echo "Online versions of .md and .html saved in 'latest' folder"
# echo /www/games/SA/cyrusa/cyrusaFAQ/v${VNUMBER}/v${VNUMBER}_${FILENAME}.md
# #- ssh astralvault.net@ssh.astralvault.net << EOF
# #-   mkdir /www/games/SA/cyrusa/cyrusaRulebook/v$VNUMBER
# #- EOF
# #- scp ${FILENAME}.md astralvault.net@ssh.astralvault.net:/www/games/SA/cyrusa/cyrusaRulebook/v${VNUMBER}/v${VNUMBER}_${FILENAME}.md
# #- scp ${FILENAME}.html astralvault.net@ssh.astralvault.net:/www/games/SA/cyrusa/cyrusaRulebook/v${VNUMBER}/v${VNUMBER}_${FILENAME}.html
# mkdir v${VNUMBER}
# cp ${FILENAME}.md ./v${VNUMBER}/v${VNUMBER}_${FILENAME}.md
# cp ${FILENAME}.html ./v${VNUMBER}/v${VNUMBER}_${FILENAME}.html
# scp -r v${VNUMBER} astralvault.net@ssh.astralvault.net:/www/games/SA/cyrusa/cyrusaFAQ
# rm -r v${VNUMBER}
# scp -r ${LATESTVERSIONFOLDERNAME} astralvault.net@ssh.astralvault/net:/www/games/SA/cyrusa/cyrusaFAQ
# echo "Files transfered to astralvault"
# git add ${FILENAME}.md
# git add ${FILENAME}.html
# git add ${FILENAME}.css
# git status
# git commit -m "v${VNUMBER}"
# echo "cayrusa"
# git push
# echo "Git commit/push done"
# sed -i 's,http://www.astralvault.net/games/SA/cyrusa/cyrusaFAQ/Images,./Images,g' ${FILENAME}.md
# read -p "TODO in sublime: Update date and version number in the title for the next version"
# read -p "TODO in sublime: Markdown Preview Save to Html"
# # echo "Time to make a forum post"
# # read -p "Go to http://www.astralvault.net/games/forum/posting.php?mode=reply&f=6&t=930"
# # echo "Here is a forum post template:"
# # echo "v${VNUMBER} is online. Link available in the [url=http://www.astralvault.net/games/forum/viewtopic.php?f=6&t=930#p9978]top post[/url].

# # [b][size=150]Section 1[/size][/b]

# # [b][size=150]Section 2[/size][/b]

# # [b][size=150]Section 3[/size][/b]"
# # read -p "Forum post finished"
# # echo "Now go edit the top post of that forum thread"
# # read -p "Go to: http://www.astralvault.net/games/forum/posting.php?mode=edit&f=6&p=9978"
# # echo "Top sentence:"
# # echo "[size=150][url=http://www.astralvault.net/games/SA/cyrusa/cyrusaRulebook/v${VNUMBER}/v${VNUMBER}_TwilightImperium3-ShatteredAscension4.2-CompactRulebook.html]Current Version: ${VNUMBER} (${DATE})[/url][/size]"
# # echo "Top list element:"
# # echo "[*] [url=http://www.astralvault.net/games/SA/cyrusa/cyrusaRulebook/v${VNUMBER}/v${VNUMBER}_TwilightImperium3-ShatteredAscension4.2-CompactRulebook.html]v${VNUMBER}[/url] (${DATE})"
# # read -p "Top forum post edited?"
# echo "Now update the links on the website"
# echo "Go to: http://www.astralvault.net/games/SA/wp-login.php?redirect_to=http%3A%2F%2Fwww.astralvault.net%2Fgames%2FSA%2Fwp-admin%2F&reauth=1"
# # echo "Update Get Started page"
# echo "Update Assets page"
# read -p "Website edition finished?"
# echo "Post about the update on discord. Here is a template:"
# echo "**FAQ UPDATE**
# FAQ updated to version ${VNUMBER}
# Available on the website as usual: <http://www.astralvault.net/games/SA/index.php/learning/>
# Changelog: <LINKTOTHECHANGELOGPOST>"
# # read -p "Update the todo list about the rule rewrite"
# read -p "Aaaaaaand you're done. Congratulations!"