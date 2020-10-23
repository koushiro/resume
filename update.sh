#
# created by ice1000 at 2017/3/26
#

echo "==building Chinese version===="

make zh >> make-zh.log

echo "==building English version===="

make en >> make-en.log

echo "====removing useless files===="

rm -rf .git
rm *.log
rm *.aux
rm *.out

echo "===initialize git repository==="

git init
git remote add origin https://github.com/koushiro/resume.git

echo "======committing changes======"

git add *
git add .gitignore
git commit -a -m "refresh everything" >> commit.log

echo "=====pushing, please wait====="

git push --force origin HEAD
git status

echo "========all tasks done========"

rm *.log
