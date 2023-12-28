# dotfiles

```sh
cd ~/projects/adalimayeu/mac-dev-playbook

python3 -m venv .venv
source .venv/bin/activate
export PATH="$(pwd)/.venv/bin:$PATH"
python3 -m pip install ansible
ansible-galaxy install -r requirements.yml

ansible-playbook -i inventory main.yml --diff --tags dotfiles --check
ansible-playbook -i inventory main.yml --diff -e dotfiles_repo_version=my_branch --tags dotfiles --check
```
