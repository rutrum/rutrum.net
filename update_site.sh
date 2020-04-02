if [[ $# < 1 ]]; then
    echo "Please enter commit message."
    exit
fi

COMMIT_MSG=$1

zola build
if [ $? -ne 0 ]; then
    echo "Zola build failed."
    exit
fi

cp -r public/* ~/repo/rutrum.github.io/
cd ~/repo/rutrum.github.io/
git add .
git commit -m "$COMMIT_MSG"
git push