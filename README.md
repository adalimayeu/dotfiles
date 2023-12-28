# dotfiles

```sh
python3 -m venv .venv
source .venv/bin/activate
export PATH="$(pwd)/.venv/bin:$PATH"
python3 -m pip install -r requirements.txt
ansible-galaxy install -r requirements.yml

ansible-playbook -i inventory main.yml --diff
ansible-playbook -i inventory main.yml --diff -e dotfiles_repo_version=my_branch
```
