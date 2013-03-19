kelias=`pwd`
cd /mnt/git/twitTracker/
RMDFILE=report
Rscript -e "require(knitr); knit('$RMDFILE.Rmd', '$RMDFILE.md');"
cat $RMDFILE.md>>total.md
pandoc -s -S -i $RMDFILE.md -o $RMDFILE.html 
cat report.md
cd $kelias
