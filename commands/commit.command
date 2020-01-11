cd -- "$(dirname "$BASH_SOURCE")/.."
vagrant ssh -c "sudo sudo -u mtgfantasydjango HOME=/home/mtgfantasydjango git -C /webapps/mtgfantasydjango/src/mtgfantasydjango add /webapps/mtgfantasydjango/src/mtgfantasydjango"
echo "Enter commit message:"
read commitmsg
vagrant ssh -c "sudo sudo -u mtgfantasydjango HOME=/home/mtgfantasydjango git -C /webapps/mtgfantasydjango/src/mtgfantasydjango commit -am '$commitmsg'"
vagrant ssh -c "sudo sudo -u mtgfantasydjango HOME=/home/mtgfantasydjango git -C /webapps/mtgfantasydjango/src/mtgfantasydjango push"
echo "Git commit complete!"