cd -- "$(dirname "$BASH_SOURCE")/.."
echo "Your email: "
read email
echo "Your name: "
read name
vagrant ssh -c "sudo sudo -u mtgfantasydjango HOME=/home/mtgfantasydjango git -C /webapps/mtgfantasydjango/src/mtgfantasydjango config --global user.email $email"
vagrant ssh -c "sudo sudo -u mtgfantasydjango HOME=/home/mtgfantasydjango git -C /webapps/mtgfantasydjango/src/mtgfantasydjango config --global user.name '$name'"
echo "Git config update complete!"